<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        html{
            height: 100%;
        }
        body{
            min-height: 100%;
            background-color: rgb(225, 15, 26);
        }
        .login-frame{
            width: 720px;
            height: max-content;
            margin-left: auto;
            margin-right: auto;

        }
        .logo-space{
            margin-top: 55px;
            width: 252px;
            margin-left: auto;
            margin-right: auto;
        }
        .input-background{
            margin-top: 35px;
            width: 720px;
            height: 360px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0px 5px 5px;
            position: relative;
        }
        .input-lineId, .input-linePwd{
            width: 450px;
            height: 50px;
            display: flex;
            flex-wrap: wrap;
            border: 1px solid black;
            border-radius: 15px;
            position: absolute;
            left: 0px;
            right: 0px;
            margin: auto;
        }
        .input-lineId{
            top: 70px;
        }
        .input-linePwd{
            top: 140px;
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
            width: 370px;
            border: none;
            border-radius: 15px;
            font-size: 16px;
            outline: none;
        }
        .subit-space{
            width: 450px;
            height: 64px;
            border-radius: 10px;
            position: absolute;
            left: 0px;
            right: 0px;
            bottom: 60px;
            margin: auto;
            box-shadow: 0px 2px 3px;
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
        .etc-line{
        width: 450px;
        display: flex;
        margin-left: auto;
        margin-right: auto;
        margin-top: 60px;
        }
        .etc-space{
            width: 200px;
            height: 40px;
            margin: auto;
        }
        .etc-button{
            width: 100%;
            height: 40px;
            border: 0px;
            border-radius: 15px;
            background: rgba(255, 255, 255);
            font-size: 16px;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <form action="" id="login-form" method="POST">
        <div class="login-frame">
            <div class="logo-space">
                <a href="${contextPath}" ><img src="../../resources/logo/psslogologin.png" alt="로고 이미지"></a>
            </div>
            <div class="input-background">
                <div class="input-lineId">
                    <div class="icon-space">
                        <img src="../../resources/icon/person_icon.png" alt="인물 이미지">
                    </div>
                    <div class="input-space">
                        <input type="text" name="userId" id="email" class="input-space" placeholder="이메일" required>
                    </div>
                </div>
                <div class="input-linePwd">
                    <div class="icon-space">
                        <img src="../../resources/icon/pwd_icon.png" alt="비번 이미지">
                    </div>
                    <div class="input-space">
                        <input type="password" name="userPwd" id="pwd" class="input-space" placeholder="비밀번호" required>
                    </div>
                </div>
                <div class="subit-space">
                    <button type="submit" class="subit-button"><b>로그인</b></button>
                </div>
            </div>
            <div class="etc-line">
                <div class="etc-space">
                    <a href=""><button type="button" class="etc-button">ID/PW 찾기</button></a>
                </div>
                <div class="etc-space">
                    <a href=""><button type="button" class="etc-button">회원가입</button></a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>