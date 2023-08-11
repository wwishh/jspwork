<%@page import="db.simpleguest.SimpleGuestDao"%>
<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%

	request.setCharacterEncoding("utf-8");

	String image = request.getParameter("image");
	String nick = request.getParameter("nick");
	String pass = request.getParameter("pass");
	String story = request.getParameter("story");
	
	SimpleGuestDto dto = new SimpleGuestDto();
	
	dto.setImage(image);
	dto.setNick(nick);
	dto.setPass(pass);
	dto.setStory(story);
	
	SimpleGuestDao dao = new SimpleGuestDao();
	
	dao.insertSG(dto);
	
	response.sendRedirect("guestList.jsp");
	
%> --%>

<!-- 자바빈즈로 변경하려면? -->
<%
request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="dao" class="db.simpleguest.SimpleGuestDao" />
<jsp:useBean id="dto" class="db.simpleguest.SimpleGuestDto" />

<jsp:setProperty property="*" name="dto" />

<%
dao.insertSG(dto);
response.sendRedirect("guestList.jsp");
%>
