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
	<form action="addAction.jsp" method="post">
		<table class="table table-bordered" style="width: 300px;">
			<tr>
				<th>상품명</th>
				<td><input type="text" name="sangpum" width="120" required=required placeholder="상품명"></td>
			</tr>

			<tr>
				<th>상품사진</th>
				<td><select name="photo">
				<option value="../쇼핑몰사진/1.jpg">자켓</option>
				<option value="../쇼핑몰사진/2.jpg">코트</option>
				<option value="../쇼핑몰사진/3.jpg">니트</option>
				<option value="../쇼핑몰사진/4.jpg">바지</option>
				<option value="../쇼핑몰사진/5.jpg">상의</option>
				</select></td>
			</tr>

			<tr>
				<th>가격</th>
				<td><input type="text" name="price" width="120" required=required placeholder="가격"></td>
			</tr>

			<tr>
				<th>입고날짜</th>
				<td><input type="date" name="ipgoday" width="120" required=required></td>
			</tr>
			
			<tr>
			<td colspan="2" align=center>
			<button type="submit">전송</button>
			<button type="button">목록</button>
			</td>
			</tr>
		</table>
	</form>
</body>
</html>