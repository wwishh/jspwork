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
<body>
<!-- f1~f20.png 4행5열(2중for)로 출력하세요 -->


<div>
<% int n=1; %>
<%for(int i=0; i<4;i++){ %>
<%for(int j=0; j<5;j++){ %>
<img src="../image/f<%=n%>.png" width="150">
<% n++; } %>
<br>
<%} %>
</div>

</body>
</html>