<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 홈페이지</title>
    <style>
        /* CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: #fff;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
 

        <%@ include file="menu.jsp"%>
        <%@ include file="index.jsp"%>

        <div class="button-container">
            <button onclick="location.href='reset.jsp'">새로고침</button>
            <button onclick="location.href='modify.html'">수정하기</button>
            <button onclick="location.href='search.jsp'">학생조회</button>
            <button onclick="location.href='search.jsp'">학생추가</button>
        </div>
    </div>
</body>
</html>
