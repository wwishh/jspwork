<%@page import="member.model.memberDao"%>
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
	<div style="margin: 50px; 100px;">
		<form action="loginOk.jsp" method="post">
			<table class="table table-bordered" style="width: 400px;">
				<tr>
					<td style="background-color: #66cdaa" width="120">아이디</td>
					<td><input type="text" class="form-control"
						style="width: 150px;" name="id" required="required"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">비밀번호</td>
					<td><input type="password" class="form-control"
						style="width: 150px;" name="pass" required="required"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" class="btn btn-success"
						value="login">
				</tr>
			</table>
		</form>
	</div>

</body>
</html>