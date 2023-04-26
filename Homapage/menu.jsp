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
      
      /* 마우스를 올렸을 때 메뉴 항목 스타일 */
      .menu a:hover {
        background-color: white;
        color: purple;
        transition: background-color 0.3s ease, color 0.3s ease;
      }
    </style>
  </head>
  
  <body>
    <div class="menu">
      <a href="menu.jsp">Home</a>
      <a href="student.jsp">학생관리</a>
      <a href="class.jsp">수업관리</a>
    </div>
    
    <!-- 본문 내용 -->
  </body>
</html>
