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
tr, td {
    border-radius: 20px;
    text-align: center;
}

</style>

</head>

<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="content-container">
        <div class="left-container">
            <br>
            <h2>기록하기</h2>
            <br>
            <div class="addWorkout">
                <span style="font-size: 25px;">운동 추가하기</span>
            </div>

            <table class="table table-bordered table-striped" style="border-collapse: separate; border-radius: 20px;">
                <thead>
                    <tr class="table-success">
                        <td colspan="3">벤치프레스</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>세트</td>
                        <td>중량</td>
                        <td>횟수</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>50</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>60</td>
                        <td>10</td>
                    </tr>
                </tbody>

                <table class="table table-bordered table-striped" style="border-collapse: separate; border-radius: 20px;">
                    <thead>
                        <tr class="table-success">
                            <td colspan="3">벤치프레스</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>세트</td>
                            <td>중량</td>
                            <td>횟수</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>50</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>60</td>
                            <td>10</td>
                        </tr>
                    </tbody>
                </table>
            </table>
        </div>

        <div class="right-container">
            <div id='calendar'></div>
        </div>
    </div>
    <script>
        $(function() {
            $(".addWorkout").on("click", function () {
                location.href="./workoutenrollview.jsp";
            })
        })
    </script>
</body>
</html>