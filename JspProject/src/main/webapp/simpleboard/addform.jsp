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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div style="margin: 30px 30px; width: 400px;">
		<form action="addaction.jsp" method="post">
			<table class="table table-bordered">
				<caption align="top">
					<b><i class="bi bi-pencil-square"></i>글쓰기</b>
				</caption>
				<tr>
					<th style="background-color: pink">작성자</th>
					<td><input type="text" name="writer" class="form-control"
						required="required" autofocus="autofocus" style="width: 150px">
					</td>
				</tr>

				<tr>
					<th style="background-color: pink">비밀번호</th>
					<td><input type="password" name="pass" class="form-control"
						required="required" style="width: 150px"></td>
				</tr>

				<tr>
					<th style="background-color: pink">제목</th>
					<td><input type="text" name="subject" class="form-control"
						required="required" style="width: 270px"></td>
				</tr>

				<tr>
					<td colspan="2"><textarea name="story"
							style="width: 390px; height: 150px" class="form-control"
							required="required"></textarea></td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<!-- 이미지 타입도 submit 기능을 함 --> <input type="image"
						src="../image/submitbtn.png" style="width: 70px; height: 40px">
						<input type="image" src="../image/listbtn.png"
						style="width: 50px; height: 40px"
						onclick="location.href='boardlist.jsp'; return false;"> <!-- 이미지버튼 눌러도 submit안되게 하려면 return false  -->
					</td>
				</tr>


			</table>
		</form>
	</div>
</body>
</html>