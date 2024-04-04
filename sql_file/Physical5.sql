DROP TABLE MEAL_RECORD;
DROP TABLE MEAL;
DROP TABLE FOOD;
DROP TABLE EX_RECORD;
DROP TABLE EX_PERFORMANCE;
DROP TABLE EXERCISE;
DROP TABLE BODYPART;
DROP TABLE REPLY;
DROP TABLE BOARD;
DROP TABLE CATEGORY;
DROP TABLE USER_PIC;
DROP TABLE MEMBER;

--==============================================================================
-- ȸ�� ���̺�
CREATE TABLE MEMBER (
	USER_NO number PRIMARY KEY,
	USER_NAME varchar2(15) NOT NULL,
	USER_NICKNAME varchar2(30) NOT NULL,
	USER_EMAIL varchar2(100) NOT NULL,
	USER_PWD varchar2(100)	NOT NULL,
	GENDER	varchar2(1)	NOT NULL CHECK (GENDER IN ('M','F')),
	AGE number NOT NULL,
	HEIGHT	number NULL,
	WEIGHT	number	NULL,
	SMM	number		NULL,
	BFP	number		NULL,
	USER_POINT	number	DEFAULT 0,
    ENROLL_DATE DATE DEFAULT SYSDATE,
    MODIFY_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
);

COMMENT ON COLUMN MEMBER.USER_NO IS 'ȸ����ȣ';
COMMENT ON COLUMN MEMBER.USER_NAME IS 'ȸ���̸�';
COMMENT ON COLUMN MEMBER.USER_NICKNAME IS 'ȸ���г���';
COMMENT ON COLUMN MEMBER.USER_EMAIL IS 'ȸ���̸���';
COMMENT ON COLUMN MEMBER.USER_PWD IS 'ȸ����й�ȣ';
COMMENT ON COLUMN MEMBER.GENDER IS '����(M/F)';
COMMENT ON COLUMN MEMBER.AGE IS '����';
COMMENT ON COLUMN MEMBER.HEIGHT IS 'Ű';
COMMENT ON COLUMN MEMBER.WEIGHT IS '������';
COMMENT ON COLUMN MEMBER.SMM IS '��ݱٷ�';
COMMENT ON COLUMN MEMBER.BFP IS 'ü�����';
COMMENT ON COLUMN MEMBER.USER_POINT IS 'ȸ������';
COMMENT ON COLUMN MEMBER.ENROLL_DATE IS 'ȸ��������';
COMMENT ON COLUMN MEMBER.MODIFY_DATE IS '����������';
COMMENT ON COLUMN MEMBER.STATUS IS 'ȸ������(Y/N)';

CREATE SEQUENCE SEQ_UNO
NOCACHE;

INSERT INTO MEMBER
VALUES (SEQ_UNO.NEXTVAL, '������', 'admin', 'admin@ps5.com', 'qwer', 'M', 22, NULL, NULL, NULL, NULL, 0,sysdate,sysdate,'Y');
--==============================================================================
--ȸ�� ������ ���� ���̺�
CREATE TABLE USER_PIC (
    PIC_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    ORIGIN_NAME VARCHAR2(255) NOT NULL,
    CHANGE_NAME VARCHAR2(255) NOT NULL,
    FILE_PATH VARCHAR2(1000) NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

COMMENT ON COLUMN USER_PIC.PIC_NO IS 'ȸ�������ʻ�����ȣ';
COMMENT ON COLUMN USER_PIC.USER_NO IS 'ȸ����ȣ';
COMMENT ON COLUMN USER_PIC.ORIGIN_NAME IS '�������Ͽ�����';
COMMENT ON COLUMN USER_PIC.CHANGE_NAME IS '�������ϼ�����';
COMMENT ON COLUMN USER_PIC.FILE_PATH IS '�������ϰ��';


--==============================================================================
-- ī�װ��� ���̺�
CREATE TABLE CATEGORY(
    CATEGORY_NO NUMBER PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(30) NOT NULL
);

COMMENT ON COLUMN CATEGORY.CATEGORY_NO IS 'ī�װ�����ȣ';
COMMENT ON COLUMN CATEGORY.CATEGORY_NAME IS 'ī�װ�����';

INSERT INTO CATEGORY VALUES(10, '����');
INSERT INTO CATEGORY VALUES(20, '��â');
INSERT INTO CATEGORY VALUES(30, '�︰��');
INSERT INTO CATEGORY VALUES(40, 'QnA');

--==============================================================================
-- �Խ��� ���̺�
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

COMMENT ON COLUMN BOARD.BOARD_NO IS '�Խñ۹�ȣ';
COMMENT ON COLUMN BOARD.CATEGORY_NO IS 'ī�װ�����ȣ';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '�Խñ�����';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '�Խñ۳���';
COMMENT ON COLUMN BOARD.BOARD_WRITER IS '�ۼ���ȸ����ȣ';
COMMENT ON COLUMN BOARD.COUNT IS '��ȸ��';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '�ۼ���';
COMMENT ON COLUMN BOARD.STATUS IS '���°�(Y/N)';

CREATE SEQUENCE SEQ_BNO
NOCACHE;
--==============================================================================
-- ��� ���̺�
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

COMMENT ON COLUMN REPLY.REPLY_NO IS '��۹�ȣ';
COMMENT ON COLUMN REPLY.REPLY_CONTENT IS '��۳���';
COMMENT ON COLUMN REPLY.REF_BNO IS '�����ϴ°Խñ۹�ȣ';
COMMENT ON COLUMN REPLY.REPLY_WRITER IS '�ۼ���ȸ����ȣ';
COMMENT ON COLUMN REPLY.CREATE_DATE IS '�ۼ���';
COMMENT ON COLUMN REPLY.STATUS IS '���°�(Y/N)';

CREATE SEQUENCE SEQ_RNO
NOCACHE;
--==============================================================================
-- ����� ���̺�
CREATE TABLE BODYPART (
    BPART_NO NUMBER PRIMARY KEY,
    BPART_NAME VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN BODYPART.BPART_NO IS '�������ȣ';
COMMENT ON COLUMN BODYPART.BPART_NAME IS '�����';

INSERT INTO BODYPART VALUES (1,'��');
INSERT INTO BODYPART VALUES (2,'���');
INSERT INTO BODYPART VALUES (3,'����');
INSERT INTO BODYPART VALUES (4,'�ٸ�');
INSERT INTO BODYPART VALUES (5,'��');

--==============================================================================
--��̸�
CREATE TABLE EXERCISE (
    EX_NO NUMBER PRIMARY KEY,
    BPART_NO NUMBER NOT NULL,
    EX_NAME VARCHAR2(50) NOT NULL,
    FOREIGN KEY (BPART_NO) REFERENCES BODYPART(BPART_NO)
);

COMMENT ON COLUMN EXERCISE.EX_NO IS '���ȣ';
COMMENT ON COLUMN EXERCISE.BPART_NO IS '�������ȣ';
COMMENT ON COLUMN EXERCISE.EX_NAME IS '��̸�';

--==============================================================================
--����� ���̺�
CREATE TABLE EX_PERFORMANCE (
    EXP_NO NUMBER PRIMARY KEY,
    EX_NO NUMBER NOT NULL,
    BPART_NO NUMBER NOT NULL,
    EXP_SET NUMBER NOT NULL,
    EXP_WEIGHT NUMBER NOT NULL,
    EXP_COUNT NUMBER NOT NULL,
    FOREIGN KEY (EX_NO) REFERENCES EXERCISE(EX_NO),
    FOREIGN KEY (BPART_NO) REFERENCES BODYPART(BPART_NO)
);

COMMENT ON COLUMN EX_PERFORMANCE.EXP_NO IS '������ȣ';
COMMENT ON COLUMN EX_PERFORMANCE.EX_NO IS '���ȣ';
COMMENT ON COLUMN EX_PERFORMANCE.BPART_NO IS '�������ȣ';
COMMENT ON COLUMN EX_PERFORMANCE.EXP_SET IS '����༼Ʈ��';
COMMENT ON COLUMN EX_PERFORMANCE.EXP_WEIGHT IS '������߷�';
COMMENT ON COLUMN EX_PERFORMANCE.EXP_COUNT IS '�����Ƚ��';

CREATE SEQUENCE SEQ_EXPN
NOCACHE;
--==============================================================================
--����
CREATE TABLE EX_RECORD(
    EXR_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    EXP_NO NUMBER NOT NULL,
    EXR_RECORD_DATE DATE DEFAULT SYSDATE NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO),
    FOREIGN KEY (EXP_NO) REFERENCES EX_PERFORMANCE(EXP_NO)
);

COMMENT ON COLUMN EX_RECORD.EXR_NO IS '���Ϲ�ȣ';
COMMENT ON COLUMN EX_RECORD.USER_NO IS 'ȸ����ȣ';
COMMENT ON COLUMN EX_RECORD.EXP_NO IS '������ȣ';
COMMENT ON COLUMN EX_RECORD.EXR_RECORD_DATE IS '���ϳ�¥';

CREATE SEQUENCE SEQ_EXRN
NOCACHE;
--==============================================================================
-- ���� ���̺�
CREATE TABLE FOOD (
    FOOD_NO NUMBER PRIMARY KEY,
    FOOD_NAME VARCHAR2(50) NOT NULL,
    FOOD_KCAL number NOT NULL,
    CARB number NOT NULL,
    PROTEIN number NOT NULL,
    FAT number NOT NULL
);

COMMENT ON COLUMN FOOD.FOOD_NO IS '���Ĺ�ȣ';
COMMENT ON COLUMN FOOD.FOOD_NAME IS '�����̸�';
COMMENT ON COLUMN FOOD.FOOD_KCAL IS '����Į�θ�';
COMMENT ON COLUMN FOOD.CARB IS 'ź��ȭ���Է�';
COMMENT ON COLUMN FOOD.PROTEIN IS '�ܹ����Է�';
COMMENT ON COLUMN FOOD.FAT IS '�����Է�';

--==============================================================================
-- �Ļ� ���̺�
CREATE TABLE MEAL (
    MEAL_NO NUMBER PRIMARY KEY,
    FOOD_NO NUMBER NOT NULL,
    FOOD_AMOUNT NUMBER NOT NULL,
    WHEN_EAT VARCHAR(1) NOT NULL CHECK (WHEN_EAT IN ('B','L','D','E')),
    FOREIGN KEY (FOOD_NO) REFERENCES FOOD(FOOD_NO)
);

COMMENT ON COLUMN MEAL.MEAL_NO IS '�Ļ��ȣ';
COMMENT ON COLUMN MEAL.FOOD_NO IS '���Ĺ�ȣ';
COMMENT ON COLUMN MEAL.FOOD_AMOUNT IS '���İ���';
COMMENT ON COLUMN MEAL.WHEN_EAT IS '�Ļ�Ÿ�̹�(B:��ħ, L:����, D:����, E:����/��Ÿ)';

CREATE SEQUENCE SEQ_MN
NOCACHE;
--==============================================================================
-- �Ļ������̺�
CREATE TABLE MEAL_RECORD (
    MR_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    MEAL_NO NUMBER NOT NULL,
    WHEN_EAT_DATE DATE DEFAULT SYSDATE NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO),
    FOREIGN KEY (MEAL_NO) REFERENCES MEAL(MEAL_NO)
);

COMMENT ON COLUMN MEAL_RECORD.MR_NO IS '�Ļ��Ϲ�ȣ';
COMMENT ON COLUMN MEAL_RECORD.USER_NO IS '������ȣ';
COMMENT ON COLUMN MEAL_RECORD.MEAL_NO IS '�Ļ��ȣ';
COMMENT ON COLUMN MEAL_RECORD.WHEN_EAT_DATE IS '�Ļ糯¥';

CREATE SEQUENCE SEQ_MRN
NOCACHE;
--======���� �� Ŀ��=============================================================
COMMIT;