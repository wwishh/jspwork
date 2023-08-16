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
<div class="loginform">
	<form action="loginAction.jsp" method="post">
	
	<input type="text" name="id" style="width:200px" class="form-control" placeholder="로그인할 아이디" required="required">
	<br>
	<input type="password" name ="pass" style="width:200px" class="form-control" placeholder="로그인할 비밀번호" requireed="required">
	<br>
	
	<button type="submit" class="btn btn-success btn-lg" style="width:200px">로그인</button>
	<br>
	<input type="checkbox" name="savechk">아이디저장 
	</form>
</div>
</body>
</html>