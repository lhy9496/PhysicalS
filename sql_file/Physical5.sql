DROP TABLE MEAL_RECORD;
DROP TABLE FOOD;
DROP TABLE EX_RECORD;
DROP TABLE EXERCISE;
DROP TABLE BODYPART;
DROP TABLE REPLY;
DROP TABLE BOARD;
DROP TABLE CATEGORY;
DROP TABLE USER_PIC;
DROP TABLE MEM_PHYSICAL_INFO;
DROP TABLE MEMBER;

DROP SEQUENCE SEQ_MRNO;
DROP SEQUENCE SEQ_EXRNO;
DROP SEQUENCE SEQ_RNO;
DROP SEQUENCE SEQ_BNO;
DROP SEQUENCE SEQ_UNO;

--==============================================================================
-- 회원 테이블
CREATE TABLE MEMBER (
	USER_NO number PRIMARY KEY,
	USER_NAME varchar2(15) NOT NULL,
	USER_NICKNAME varchar2(30) NOT NULL,
	USER_EMAIL varchar2(100) NOT NULL,
	USER_PWD varchar2(100)	NOT NULL,
	GENDER	varchar2(1)	NOT NULL CHECK (GENDER IN ('M','F')),
	AGE number NOT NULL,
	USER_POINT	number	DEFAULT 0,
    ENROLL_DATE DATE DEFAULT SYSDATE,
    MODIFY_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
);

COMMENT ON COLUMN MEMBER.USER_NO IS '회원번호';
COMMENT ON COLUMN MEMBER.USER_NAME IS '회원이름';
COMMENT ON COLUMN MEMBER.USER_NICKNAME IS '회원닉네임';
COMMENT ON COLUMN MEMBER.USER_EMAIL IS '회원이메일';
COMMENT ON COLUMN MEMBER.USER_PWD IS '회원비밀번호';
COMMENT ON COLUMN MEMBER.GENDER IS '성별(M/F)';
COMMENT ON COLUMN MEMBER.AGE IS '나이';
COMMENT ON COLUMN MEMBER.USER_POINT IS '회원점수';
COMMENT ON COLUMN MEMBER.ENROLL_DATE IS '회원가입일';
COMMENT ON COLUMN MEMBER.MODIFY_DATE IS '정보수정일';
COMMENT ON COLUMN MEMBER.STATUS IS '회원상태(Y/N)';


CREATE SEQUENCE SEQ_UNO
NOCACHE;

INSERT INTO MEMBER
VALUES (SEQ_UNO.NEXTVAL, '관리자', 'admin', 'admin@ps5.com', 'qwer', 'M', 22, default,sysdate,sysdate,'Y');

INSERT INTO MEMBER
VALUES (SEQ_UNO.NEXTVAL, '회원1', 'user01', 'user01@ps5.com', '1234', 'M', 25, default,sysdate,sysdate,'Y');

--===============================================================================
--회원 신체정보
CREATE TABLE MEM_PHYSICAL_INFO (
    PINFO_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    MEM_HEIGHT NUMBER DEFAULT 0,
    MEM_WEIGHT NUMBER DEFAULT 0,
    MEM_SMM NUMBER DEFAULT 0,
    MEM_BFP NUMBER DEFAULT 0,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

COMMENT ON COLUMN MEM_PHYSICAL_INFO.PINFO_NO IS '회원신체정보번호';
COMMENT ON COLUMN MEM_PHYSICAL_INFO.USER_NO IS '회원번호';
COMMENT ON COLUMN MEM_PHYSICAL_INFO.MEM_HEIGHT IS '회원키';
COMMENT ON COLUMN MEM_PHYSICAL_INFO.MEM_WEIGHT IS '회원몸무게';
COMMENT ON COLUMN MEM_PHYSICAL_INFO.MEM_SMM IS '회원골격근량';
COMMENT ON COLUMN MEM_PHYSICAL_INFO.MEM_BFP IS '회원체지방률';

--==============================================================================
--회원 프로필 사진 테이블
CREATE TABLE USER_PIC (
    PIC_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    ORIGIN_NAME VARCHAR2(255) NOT NULL,
    CHANGE_NAME VARCHAR2(255) NOT NULL,
    FILE_PATH VARCHAR2(1000) NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

COMMENT ON COLUMN USER_PIC.PIC_NO IS '회원프로필사진번호';
COMMENT ON COLUMN USER_PIC.USER_NO IS '회원번호';
COMMENT ON COLUMN USER_PIC.ORIGIN_NAME IS '사진파일원본명';
COMMENT ON COLUMN USER_PIC.CHANGE_NAME IS '사진파일수정명';
COMMENT ON COLUMN USER_PIC.FILE_PATH IS '사진파일경로';


--==============================================================================
-- 카테고리 테이블
CREATE TABLE CATEGORY(
    CATEGORY_NO NUMBER PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(30) NOT NULL
);

COMMENT ON COLUMN CATEGORY.CATEGORY_NO IS '카테고리번호';
COMMENT ON COLUMN CATEGORY.CATEGORY_NAME IS '카테고리명';

INSERT INTO CATEGORY VALUES(10, '자유');
INSERT INTO CATEGORY VALUES(20, '헬창');
INSERT INTO CATEGORY VALUES(30, '헬린이');
INSERT INTO CATEGORY VALUES(40, 'QnA');

--==============================================================================
-- 게시판 테이블
CREATE TABLE BOARD(
    BOARD_NO NUMBER PRIMARY KEY,
    CATEGORY_NO NUMBER,
    BOARD_TITLE VARCHAR2(100) NOT NULL,
    BOARD_CONTENT VARCHAR2(4000) NOT NULL,
    BOARD_WRITER NUMBER NOT NULL,
    COUNT NUMBER DEFAULT 0,
    CREATE_DATE DATE DEFAULT SYSDATE NOT NULL,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    FOREIGN KEY (BOARD_WRITER) REFERENCES MEMBER(USER_NO),
    FOREIGN KEY (CATEGORY_NO) REFERENCES CATEGORY(CATEGORY_NO)
);

COMMENT ON COLUMN BOARD.BOARD_NO IS '게시글번호';
COMMENT ON COLUMN BOARD.CATEGORY_NO IS '카테고리번호';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '게시글제목';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '게시글내용';
COMMENT ON COLUMN BOARD.BOARD_WRITER IS '작성자회원번호';
COMMENT ON COLUMN BOARD.COUNT IS '조회수';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '작성일';
COMMENT ON COLUMN BOARD.STATUS IS '상태값(Y/N)';

CREATE SEQUENCE SEQ_BNO
NOCACHE;
--==============================================================================
-- 댓글 테이블
CREATE TABLE REPLY(
    REPLY_NO NUMBER PRIMARY KEY,
    REPLY_CONTENT VARCHAR2(400) NOT NULL,
    REF_BNO NUMBER NOT NULL,
    REPLY_WRITER NUMBER NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE NOT NULL,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN ('Y','N')),
    FOREIGN KEY (REF_BNO) REFERENCES BOARD(BOARD_NO),
    FOREIGN KEY (REPLY_WRITER) REFERENCES MEMBER(USER_NO)
);

COMMENT ON COLUMN REPLY.REPLY_NO IS '댓글번호';
COMMENT ON COLUMN REPLY.REPLY_CONTENT IS '댓글내용';
COMMENT ON COLUMN REPLY.REF_BNO IS '참조하는게시글번호';
COMMENT ON COLUMN REPLY.REPLY_WRITER IS '작성자회원번호';
COMMENT ON COLUMN REPLY.CREATE_DATE IS '작성일';
COMMENT ON COLUMN REPLY.STATUS IS '상태값(Y/N)';

CREATE SEQUENCE SEQ_RNO
NOCACHE;
--==============================================================================
-- 운동부위 테이블
CREATE TABLE BODYPART (
    BPART_NO NUMBER PRIMARY KEY,
    BPART_NAME VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN BODYPART.BPART_NO IS '운동부위번호';
COMMENT ON COLUMN BODYPART.BPART_NAME IS '운동부위';

INSERT INTO BODYPART VALUES (1,'등');
INSERT INTO BODYPART VALUES (2,'어깨');
INSERT INTO BODYPART VALUES (3,'가슴');
INSERT INTO BODYPART VALUES (4,'다리');
INSERT INTO BODYPART VALUES (5,'팔');

--==============================================================================
--운동이름
CREATE TABLE EXERCISE (
    EX_NO NUMBER PRIMARY KEY,
    BPART_NO NUMBER NOT NULL,
    EX_NAME VARCHAR2(50) NOT NULL,
    FOREIGN KEY (BPART_NO) REFERENCES BODYPART(BPART_NO)
);

COMMENT ON COLUMN EXERCISE.EX_NO IS '운동번호';
COMMENT ON COLUMN EXERCISE.BPART_NO IS '운동부위번호';
COMMENT ON COLUMN EXERCISE.EX_NAME IS '운동이름';

INSERT INTO EXERCISE VALUES(1,1,'데드리프트');
INSERT INTO EXERCISE VALUES(2,1,'렛풀다운');
INSERT INTO EXERCISE VALUES(3,2,'오버헤드프레');
INSERT INTO EXERCISE VALUES(4,2,'사이드레터럴레이즈');
INSERT INTO EXERCISE VALUES(5,3,'플랫벤치프레스');
INSERT INTO EXERCISE VALUES(6,3,'체스트프레스');
INSERT INTO EXERCISE VALUES(7,4,'스쿼트');
INSERT INTO EXERCISE VALUES(8,4,'레그프레스');
INSERT INTO EXERCISE VALUES(9,5,'덤벨컬');
INSERT INTO EXERCISE VALUES(10,5,'케이블 푸쉬 다운');

--==============================================================================
--운동기록 테이블
CREATE TABLE EX_RECORD(
    EXR_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    EX_NO NUMBER NOT NULL,
    EXR_DATE DATE DEFAULT SYSDATE NOT NULL,
    EXR_SET NUMBER NOT NULL,
    EXR_WEIGHT NUMBER NOT NULL,
    EXR_COUNT NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO),
    FOREIGN KEY (EX_NO) REFERENCES EXERCISE(EX_NO)
);

COMMENT ON COLUMN EX_RECORD.EXR_NO IS '운동기록번호';
COMMENT ON COLUMN EX_RECORD.USER_NO IS '회원번호';
COMMENT ON COLUMN EX_RECORD.EX_NO IS '운동번호';
COMMENT ON COLUMN EX_RECORD.EXR_DATE IS '운동기록날짜';
COMMENT ON COLUMN EX_RECORD.EXR_SET IS '세트수';
COMMENT ON COLUMN EX_RECORD.EXR_WEIGHT IS '중량';
COMMENT ON COLUMN EX_RECORD.EXR_COUNT IS '횟수';


CREATE SEQUENCE SEQ_EXRNO
NOCACHE;
--==============================================================================
-- 음식 테이블
CREATE TABLE FOOD (
    FOOD_NO NUMBER PRIMARY KEY,
    FOOD_NAME VARCHAR2(50) NOT NULL,
    FOOD_KCAL number NOT NULL,
    CARB number NOT NULL,
    PROTEIN number NOT NULL,
    FAT number NOT NULL
);

COMMENT ON COLUMN FOOD.FOOD_NO IS '음식번호';
COMMENT ON COLUMN FOOD.FOOD_NAME IS '음식이름';
COMMENT ON COLUMN FOOD.FOOD_KCAL IS '음식칼로리';
COMMENT ON COLUMN FOOD.CARB IS '탄수화물';
COMMENT ON COLUMN FOOD.PROTEIN IS '단백질';
COMMENT ON COLUMN FOOD.FAT IS '지방';

--==============================================================================
-- 식사기록테이블
CREATE TABLE MEAL_RECORD (
    MR_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    FOOD_NO NUMBER NOT NULL,
    FOOD_COUNT NUMBER NOT NULL,
    WHEN_EAT_DATE DATE DEFAULT SYSDATE NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO),
    FOREIGN KEY (FOOD_NO) REFERENCES FOOD(FOOD_NO)
);

COMMENT ON COLUMN MEAL_RECORD.MR_NO IS '식사기록번호';
COMMENT ON COLUMN MEAL_RECORD.USER_NO IS '유저번호';
COMMENT ON COLUMN MEAL_RECORD.FOOD_NO IS '음식번호';
COMMENT ON COLUMN MEAL_RECORD.FOOD_COUNT IS '음식개수';

COMMENT ON COLUMN MEAL_RECORD.WHEN_EAT_DATE IS '식사날짜';

CREATE SEQUENCE SEQ_MRNO
NOCACHE;
--======생성 후 커밋=============================================================
COMMIT;
