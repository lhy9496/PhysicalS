<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../../resources/css/workoutenroll.css">
<style>
    body {
        margin: 0%;
        padding: 0%;
    }

    .dietEnroll{
        box-sizing: border-box;
        border: 1px solid #E10F1A;
        border: none; 
    }

    td > .plusDetail {
        right: 20px;
        bottom: 0px;
        margin-top: 10px;
        border:none;
        width: 40px;
        height: 30px;
        border-radius: 20px;
    }


    table{
        padding: 20px;
        background: #b6b0b0;
        margin-bottom: 200px;
        margin-top: 150px;
        border: none;
        border-radius: 20px;

    }

    th{
        box-sizing: border-box;
        border-radius: 20px;
        border: none;
        background: #E10F1A;
        color: aliceblue;
        font-weight: 500;

    }

    td {
        align-items: center;
        box-sizing: border-box;
        border-radius: 20px;
        border: none;
        background: pink;
    }

</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <div class="dietEnroll">
        <div class="dietEnroll-container">
           <table border="1" border="none" class="table table-bordered table-hover text-center">
            <th colspan="3">음식을 선택해주세요
                <tr>
                    <th>음식</th>
                    <th colspan="2">칼로리</th>
                </tr>
                <tr>
                    <td align="center">김밥</td>
                    <td align="center">350kcal</td>
                    <td align="center"><button type="button" class="plusDetail"><img src="../../resources/logo/icon_plus.png"></td>
                </tr>
                <tr>
                    <td align="center">김밥</td>
                    <td align="center">350kcal</td>
                    <td align="center"><button type="button" class="plusDetail"><img src="../../resources/logo/icon_plus.png"></td>
                </tr>
                <tr>
                    <td align="center">김밥</td>
                    <td align="center">350kacl</td>
                    <td align="center"><button type="button" class="plusDetail"><img src="../../resources/logo/icon_plus.png"></td>
                </tr>
                <tr>
                    <td align="center">김밥</td>
                    <td align="center">350kcal</td>
                    <td align="center"><button type="button" class="plusDetail"><img src="../../resources/logo/icon_plus.png"></td>
                </tr>
                <tr>
                    <td align="center">김밥</td>
                    <td align="center">350kcal</td>
                    <td align="center"><button type="button" class="plusDetail"><img src="../../resources/logo/plusButton.png"></td>
                </tr>
            </th>
           </table>
        </div>
    </div>

    <script>
        $(function() {
            $(".plusDetail").on("click", function () {
                location.href="./dietsample.jsp";
            })
        })
    </script>

</body>
</html>