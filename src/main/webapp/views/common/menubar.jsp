<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../../resources/css/menubar.css">

</head>

<body>
    <div id="header">
        <div id="logo-search-container">
            <div id="logo-container">
                <a href="#">
                <img src="../../resources/logo/psslogomenubar.png" alt="로고">
                </a>
            </div>

            <div id="searchbar-container">
                <div id="searchbar">
                    <input type="text" name="searchUser" placeholder="닉네임을 입력하세요.">
                    <button type="submit">검색</button>
                </div>
            </div>
        </div>
        <div id="nav">
            <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="#">마이페이지</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">운동기록</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">식단기록</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">커뮤니티</a>
                </li>
              </ul>
        </div>
    </div>
</body>
</html>