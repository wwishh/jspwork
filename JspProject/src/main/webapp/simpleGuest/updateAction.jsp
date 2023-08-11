<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	SimpleGuestDao dao = new SimpleGuestDao();
	
	String num = request.getParameter("num");
	String nick = request.getParameter("nick");
	String image = request.getParameter("image");
	String story = request.getParameter("story");
	String pass = request.getParameter("pass");
	
	if(dao.isEqualPass(num, pass)){
		SimpleGuestDto dto = new SimpleGuestDto();
		
		dto.setNick(nick);
		dto.setImage(image);
		dto.setStory(story);
		dto.setNum(num);
		
		dao.updateSG(dto);
		
		response.sendRedirect("guestList.jsp");
	}
	else{%>
		<script>
			alert("비밀번호가 일치하지 않습니다!");
			history.back();
		</script>
	<%}

%>