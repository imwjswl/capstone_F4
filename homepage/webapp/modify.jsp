<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="DAO.studentDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    String ustudentId = request.getParameter("studentId");
    String uAttend = request.getParameter("attend");
    
    studentDAO dao = new studentDAO();
    if (dao.exists(ustudentId) == false) {
        out.print("학생 정보를 찾을 수 없습니다.");
        return;
    }
    
    if (dao.exists(ustudentId)) {
    	dao.update(uAttend,ustudentId);
        out.print("출석 정보를 수정하였습니다.");
        response.sendRedirect("main.jsp");
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
%>