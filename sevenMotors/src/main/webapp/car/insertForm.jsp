<%@page import="java.util.ArrayList"%>
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
	<div style="margin: 50px 100px;">
		<form action="insertAction.jsp" method="post"
			enctype="multipart/form-data" class="form-inline" id="mfrm">
			<table class="table table-bordered" style="width: 500px;">
				<caption align="top">
					<b>견적등록</b>
				</caption>
				<tr>
					<td style="background-color: #66cdaa" width="120">차주이름</td>
					<td><input type="text" class="form-control" name="name"
						style="width: 120px;" required="required"></td>
				</tr>
				<tr>
					<td style="background-color: #66cdaa" width="120">차종</td>
					<td><input type="text" class="form-control"
						style="width: 120px;" name="cname" required="required"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">차량번호</td>
					<td><input type="text" class="form-control"
						style="width: 120px;" name="cid" required="required"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">차량이미지</td>
					<td><input type="file" class="form-control"
						style="width: 250px;" name="uploadImage"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">부품</td>
					<td><input type="checkbox" name="device" value="엔진오일">엔진오일
						<input type="checkbox" name="device" value="타이어">타이어 <input
						type="checkbox" name="device" value="엔진">엔진 <input
						type="checkbox" name="device" value="백미러">백미러</td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-success">견적등록</button>
						<button type="submit" class="btn btn-warning"
							onclick="location.href='memberList.jsp'">회원목록</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

	
	

</body>
</html>