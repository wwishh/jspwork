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
	<%
	String name = request.getParameter("irum");
	String pass = request.getParameter("pass");
	String lic = request.getParameter("lic");
	%>
	
	<h3>결과값 출력</h3>
	이름: <%=name %><br>
	비밀번호: <%=pass %><br>
	운전면허 여부: <%=lic==null?"없음":"있음"%>
</body>
</html>