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
<style>
	div{
		float :left;
	}
</style>
</head>
<body>
	<%
String name = request.getParameter("name");
String size = request.getParameter("size");
String[] color = request.getParameterValues("color");
String add = request.getParameter("add");
%>

	상품명:
	<%=name %><br>
	<br>

	<%if(size!=null){%>
	사이즈:
	<%=size %><br>
	<br>
	<% }else{%>
	사이즈: 선택안함
	<br>
	<br>
	<%} %>

	상품색상:
	<%for(int i=0; i<color.length;i++) {%>
	<div style="background-color:<%=color[i]%>; width:50px; height:50px"></div>
	<%} %>
	추가상품:
	<%=add %>
</body>
</html>