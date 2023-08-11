<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
SimpleGuestDao dao = new SimpleGuestDao();

String num = request.getParameter("num");
dao.deleteSG(num);

response.sendRedirect("guestList.jsp");

%>