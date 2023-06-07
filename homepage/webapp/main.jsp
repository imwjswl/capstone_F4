<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 홈페이지</title>

</head>
<body>
	<%@ include file="menu.jsp"%>
	<%@ include file="index.jsp"%>
	<button onclick="location.href='reset.jsp'">새로고침</button >
	<button onclick="location.href='modify.html'">수정하기</button >
	<button onclick="location.href='search.jsp'">학생조회</button >
	<button onclick="location.href='search.jsp'">학생추가</button >
</body>
</html>