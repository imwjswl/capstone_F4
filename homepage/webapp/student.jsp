<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="DAO.studentDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    String uname = request.getParameter("name");
    String ugrade = request.getParameter("grade");
    String ustudentId = request.getParameter("studentId");
    String usubject = request.getParameter("subject");
    String uschedulendDays = request.getParameter("schedulendDays");
    String uattend = request.getParameter("attend");
    
    studentDAO dao = new studentDAO();
    
    if (dao.insert(uname,ugrade,ustudentId,usubject,uschedulendDays,uattend) == false) {
        out.print("학생 정보를 찾을 수 없습니다.");
        return;
    }
    
    if (dao.insert(uname,ugrade,ustudentId,usubject,uschedulendDays,uattend)) {
        out.print("출석 정보를 수정하였습니다.");
        response.sendRedirect("reset.jsp");
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
%>