<%@page import="db.ajaxboard.AjaxBoardDao"%>
<%@page import="db.ajaxboard.AjaxBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%
	request.setCharacterEncoding("utf-8");
	
	AjaxBoardDto dto = new AjaxBoardDto();
	
	String num = request.getParameter("unum");
	String writer = request.getParameter("uwriter");
	String subject = request.getParameter("usubject");
	String story = request.getParameter("ustory");
	String avata = request.getParameter("uavata");
	
	dto.setNum(num);
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setStory(story);
	dto.setAvata(avata);
	
	AjaxBoardDao dao = new AjaxBoardDao();
	
	dao.updateBoard(dto);
	
	%>