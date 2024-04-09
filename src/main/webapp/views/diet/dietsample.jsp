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
<link rel="stylesheet" href="../../resources/css/workoutbody.css">

<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js'></script>
  <script>

    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth'
      });
      calendar.render();
    });

  </script>

<style>
    body{
        margin: 0px;
        padding: 0px;
    }

    div{
        box-sizing: border-box;
        border: 1px solid #E10F1A;
        border: none;
        
    }

    .wrap{
        width: 100%;
        min-height: 500px;
        height: 800px;
        
    }

    .wrap > div{
        width: 100%;
    }

    #header, #footer{height: 250px;}
    #content{
        min-height: 200px;
        height: calc(100% - 200px);
    }
    #content > div{
        height: 100%;
        float: left;
    }
    #content1{width: 300px;}
    #content2{width: calc(100% - 300px);}

    #content1 > #content_diet {
        height: 22%;
    }

    #content_diet {
        margin: 15px;
        box-sizing: border-box;
        background: #E10F1A;
        border-radius: 35px;
    }

    #content_diet > button {
        position: relative;
        top: 45px;
        right: 20px;
        float: right;

    }

    h2{
        position: relative;
        left: 15px;
        top: 45px;
        color: aliceblue;
        font-size: 25px;
    }

    .plus{
        font-size: 14px;
        position: relative;
        right: 20px;
        bottom: 30px;
        border:none;
        width: 40px;
        height: 40px;
        border-radius: 20px;
        background-color: #E10F1A;
           
    }



</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>    
    <div class="wrap">
        <div id="header"></div>
        <div id="content">
            <div id="content1">
                <div id="content_diet">
                    <button type="button" class="plus"><img src="../../resources/logo/icon_plus.png"></button>
                    <h2>아침식사</h2>
                </div>
                <div id="content_diet">
                    <button type="button" class="plus"><img src="../../resources/logo/icon_plus.png"></button>
                    <h2>점심식사</h2>
                </div>
                <div id="content_diet">
                    <button type="button" class="plus"><img src="../../resources/logo/icon_plus.png"></button>
                    <h2>저녘식사</h2>
                </div>
                <div id="content_diet">
                    <button type="button" class="plus"><img src="../../resources/logo/icon_plus.png"></button>
                    <h2>간식/기타</h2>
                </div>
            </div>
            
            <div id="content2">
                <div id="calendar"></div>
            </div>
        </div>
    </div>

    <script>
        $(function() {
            $(".plus").on("click", function () {
                location.href="./dietsampleEnrollview.jsp";
            })
        })
    </script>
</body>
</html>
