<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="DAO.studentDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    String ustudentId = request.getParameter("studentId");
    
    studentDAO dao = new studentDAO();
    if (dao.exists(ustudentId) == false) {
        out.print("학생 정보를 찾을 수 없습니다.");
        return;
    }
    
    if (dao.exists(ustudentId)) {
        out.print(dao.exists(ustudentId));
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
%>