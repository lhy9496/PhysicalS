<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <style>
        *{
            padding: 0; 
            margin: 0;
            box-sizing: border-box;
            
        }
        
        li{
            list-style: none;
            margin-bottom: 30px;
            
        }
        
        li a{
            text-decoration: none;
            color: black;
            
        }
             
        #nav{
            width: 100%;
            padding: 20px 0px ;
            
            
        }
        #nav>ul{
            display: flex;
            width: 100%;
            text-align: center;
            
            
        }
        
        #nav > ul > li{
            width: 100%;
            position: relative;
            
        }
      
        #nav li a{
            color: white;
            font-weight: bolder;
            background: rgb(157, 001, 001);
            padding: 5px 15px;
            border-radius: 3px;
            
            
        }
        
        .list-area{
            color: white;
            text-align: center;
            width: 100%;
            padding: 30px;
            margin-top: -35px;
            border-collapse: collapse;
            
            
        }
        .list-area>tbody>tr:hover{
            background: rgb(224, 223, 223);
            cursor: pointer;
            
        }
        
        thead th{
            background: rgb(224, 015, 026);
            height: 35px;
            border-radius: px;
        
        }
        form{
            background: rgb(235, 235, 235);
            height: 100%;
            width: 1070px;
        }
        
        .paging-area{
            padding-bottom: 50px;
            
        
        }
        .paging-area button{
            border: 0px;
            font-size: small;
            
        }
        .paging-area>button:hover{
            background: rgb(189, 186, 186);
            cursor: pointer;
            
        }
        tr{
            border: 5px solid rgb(235, 235, 235);
            background: white;
            color: black;
            
        }
        
        </style>
    </head>
    <body>
    
        <form action="">
            <div id="nav" class="bo">
                <ul>
                    <li><a href="#">전체</a></li>
                    <li><a href="#">자유</a></li>
                    <li><a href="#">헬창</a></li>
                    <li><a href="#">헬린이</a></li>
                    <li><a href="#">Q / A</a></li>
                </ul>
            </div>
            <table class="list-area" align="center">
                <thead>
                    <th width="40" style="border-radius: 15px 0px 0px 15px;">번호</th>
                    <th width="50">말머리</th>
                    <th width="300">제목</th>
                    <th width="100">글쓴이</th>
                    <th width="100">날짜</th>
                    <th width="50" style="border-radius: 0px 15px 15px 0px;">조회</th>
                </thead>
                <tbody>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>127</td>
                            <td><b>헬창</b></td>
                            <td>안녕하세요 운동좀 물어볼게요!</td>
                            <td>흑드라군</td>
                            <td>2024/04/04</td>
                            <td>27</td>
                        </tr>
                </tbody>
            </table>
            
            <div class="paging-area" align="center">
                <button onclick="">&lt;이전</button>
                <button disabled>1</button>
                <button onclick="">2</button>
                <button onclick="">3</button>
                <button onclick="">4</button>
                <button onclick="">5</button>
                <button onclick="">6</button>
                <button onclick="">7</button>
                <button onclick="">8</button>
                <button onclick="">9</button>
                <button onclick="">10</button>
                <button onclick="">다음&gt;</button>
            </div>
        </form>

</body>
</html>