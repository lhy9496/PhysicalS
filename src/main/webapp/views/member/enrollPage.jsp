<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .signup-frame{
        width: 720px;
        height: max-content;
        margin-left: auto;
        margin-right: auto;
    }
    .top-line, .middle-line, .bottom-line, .middle-line1, .middle-line2{
        width: 720px ;
        height: 55px;
        display: flex;
        flex-wrap: wrap;
        border: 1px solid ;
    }
    .top-line{
        margin-top: 30px;
        border-bottom: 0px;
        border-radius: 20px 20px 0px 0px
    }
    .bottom-line{
        border-top: 0px;
        border-radius: 0px 0px 20px 20px
    }
    .middle-line1{
        border-bottom: 0px;
    }
    .gender-line{
        width: 720px;
        height: 75px;
        border: 1px solid;
        border-top: 0px;
        border-radius: 0px 0px 20px 20px;
        display: flex;
        margin-left: auto;
        margin-right: auto;
    }
    .logo-space{
        margin-top: 55px;
    }
    .icon-space{
        width: 40px;
        align-content: center;
        padding-left: 20px;
        padding-right: 20px;
        padding: auto;
    }
    .input-space{
        display: flex;
        width: 640px;
        border: none;
        border-radius: 20px;
        font-size: 16px;
        outline: none;
    }
    .gender-space{
        width: 250px;
        height: 40px;
        margin: auto;
        border-radius: 10px;
    }
    .gender-button{
        width: 100%;
        height: 40px;
        border: 1px solid;
        border-radius: 10px;
        background: rgba(255, 255, 255);
        font-size: 16px;
        font-weight: 600;
    }
    .btn{
        display: none;
    }
    .subit-space{
        width: 450px;
        height: 64px;
        margin-top: 64px;
        margin-left: auto;
        margin-right: auto;
    }
    .subit-button{
        width: 450px;
        height: 64px;
        border-radius: 10px;
        border: 0px;
        background-color: rgb(224, 15, 26); 
        color: white;
        font-size: 36px;
    }
</style>
</head>
<body>
    <form action="<%=contextPath%>/insert.me" id="enroll-form" method="POST">
        <div class="signup-frame">
            <!-- 로고 -->
            <div class="logo-space">
                <img src="../resources/logo/psslogo.png" alt="로고 이미지">
            </div>
            <!-- 상단 입력칸 3개 -->
            <div class="top-line">
                <div class="icon-space">
                    <img src="../resources/icon/person_icon.png" alt="인물 이미지">
                </div>
                <div class="input-space">
                    <input type="text" name="userId" class="input-space" placeholder="아이디" required>
                </div>
            </div>
            <div class="middle-line">
                <div class="icon-space">
                    <img src="../resources/icon/pwd_icon.png" alt="비번 이미지">
                </div>
                <div class="input-space">
                    <input type="password" name="userPwd" class="input-space" placeholder="비밀번호" required>
                </div>
            </div>
            <div class="bottom-line">
                <div class="icon-space">
                    <img src="../resources/icon/pwd_icon.png" alt="비번 이미지">
                </div>
                <div class="input-space">
                    <input type="password" name="userPwdCheck" class="input-space" placeholder="비밀번호 확인" required>
                </div>
            </div>

            
            <!-- 하단 입력칸 4개 -->
            <div class="top-line">
                <div class="icon-space">
                    <img src="../resources/icon/person_icon.png" alt="인물 이미지">
                </div>
                <div class="input-space">
                    <input type="text" class="input-space" name="userName" placeholder="이름" required>
                </div>
            </div>
            <div class="middle-line1">
                <div class="icon-space">
                    <img src="../resources/icon/person_icon.png" alt="인물 이미지">
                </div>
                <div class="input-space">
                    <input type="text" class="input-space" name="userNickname" placeholder="닉네임" required>
                </div>
            </div>
            <div class="middle-line2">
                <div class="icon-space">
                    <img src="../resources/icon/calendar_icon.png" alt="달력 이미지">
                </div>
                <div class="input-space">
                    <input type="text" class="input-space" name="userBirthday" placeholder="생년월일 8자리" maxlength="8">
                </div>
            </div>
            <div class="gender-line">
                <div class="gender-space">
                    <button type="button" class="gender-button" id="genbuttonM" onclick="genderSelectM()">
                        <input type="radio" class="btn" id="M" name="gender" required>남자
                    </button>
                </div>
                <div class="gender-space">
                    <button type="button" class="gender-button" id="genbuttonF" onclick="genderSelectF()">
                        <input type="radio" class="btn" id="F" name="gender" required>여자
                    </button>
                </div>
            </div>

            <!-- 가입신청 -->
            <div class="subit-space">
                <button type="submit" class="subit-button"><b>가입신청</b></button>
            </div>
        </div>
    </form>

    <script>
        MArea = document.getElementById("genbuttonM");
        FArea = document.getElementById("genbuttonF");
        
        function genderSelectF(){
            F.checked = true;
            FArea.style.background = "rgb(224, 15, 26)";
            FArea.style.color = "white";
            MArea.style.background = "white";
            MArea.style.color = "black";
        }
        
        function genderSelectM(){
            M.checked = true;
            MArea.style.background = "rgb(224, 15, 26)";
            MArea.style.color = "white";
            FArea.style.background = "white";
            FArea.style.color = "black";
        }
    </script>
</body>
</html>