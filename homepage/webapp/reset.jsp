<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="DAO.studentDAO" %>
<%
	request.setCharacterEncoding("utf-8");
    
    studentDAO dao = new studentDAO();
    if (dao.reset()) {
        response.sendRedirect("main.jsp");
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
%>