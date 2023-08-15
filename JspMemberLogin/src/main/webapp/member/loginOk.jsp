<%@page import="member.model.memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pass = request.getParameter("pass");

memberDao dao = new memberDao();
if (dao.login(id, pass)==null) {
	response.sendRedirect("loginForm.jsp");
}
else{
	String name = dao.login(id, pass);
	session.setAttribute("name", name);
	response.sendRedirect("logoutForm.jsp");
}


%>