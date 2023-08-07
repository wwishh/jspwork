<%@page import="java.text.NumberFormat"%>
<%@page import="model.myintro.IntroDto"%>
<%@page import="model.myintro.IntroDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&family=Noto+Sans+KR:wght@500&family=Orbit&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<%
String no = request.getParameter("no");
IntroDao dao = new IntroDao();
IntroDto dto = dao.getData(no);
NumberFormat nf = NumberFormat.getCurrencyInstance();
%>
<body>

<div style="margin:20px">
<b><%=dto.getIntro_name()%>님의 자기소개</b><br>
<b>이름 <%=dto.getIntro_name()%></b><br>
<b>지역 <%=dto.getIntro_city()%></b><br>
<b>이름 <%=dto.getIntro_hp()%></b><br>
<b>이름 <%=dto.getIntro_blood()%></b><br>
<b>이름 <%=dto.getGaipday()%></b><br><br>

<button type="button" onclick="history.back()" class="btn btn-outline-info">이전으로 가기</button>
</div>
</body>
</html>