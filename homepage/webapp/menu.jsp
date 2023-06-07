<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>
      /* 상단 고정 메뉴 스타일 */
      .menu {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        background-color: purple;
        padding: 10px 20px;
        display: flex;
        justify-content: flex-start;
      }
           /* 메뉴 항목 스타일 */
      .menu a {
        color: white;
        font-weight: bold;
        margin-right: 20px;
        text-decoration: none;
        display: inline-block;
        padding: 5px 10px;
        border: 2px solid white;
        border-radius: 5px;
      }
  </head>
  
  <body>
    <div class="menu">
      <a href="menu.jsp">Home</a>
      <h2>캡스톤디자인 출결관리 시스템</h2>
    </div>
   
  </body>
</html>


<!-- index.html -->
<!DOCTYPE html>
<html>
<head>
    <title>출결 관리 웹사이트</title>
    <style>
        /* 헤더 스타일 */
        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        /* 푸터 스타일 */
        footer {
            background-color: #f9f9f9;
            color: #333;
            padding: 10px;
            text-align: center;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>캡스톤 디자인 출석체크 사이트</h1>
    </header>



    <footer>
	    <p>&copy; 조선대학교 컴퓨터공학과 캡스톤디자인 F4</p>
		<p> 김채린 백선영 전지원 한민기 </p>
    </footer>
</body>
</html>
