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
<div>
	<%String name = (String)session.getAttribute("name");%>
	<b><%=name %>님이 로그인하셨습니다</b>
	<img src="../avata/b7.png" width=200><br>
	<button type="button" class="btn btn-danger" onclick="location.href='logoutAction.jsp'">로그아웃</button>
</div>
</body>
</html>