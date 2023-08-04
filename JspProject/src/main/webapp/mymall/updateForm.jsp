<%@page import="model.mymall.MallDao"%>
<%@page import="model.mymall.MallDto"%>
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
#selphoto {
	position: absolute;
	top: 20px;
	left: 360px;
	width: 200px;
	height: 200px;
	border-radius: 30px;
}
</style>
<script>
	$(function() {

		var srcImg = $("#photo").val();

		$("#selphoto").attr("src", srcImg);

		$("#photo").change(function() {
			$("#selphoto").attr("src", $(this).val());
		});
	})
</script>
</head>

<%
String no = request.getParameter("no");
MallDao dao = new MallDao();
MallDto dto = dao.getData(no);
%>
<body>
	<form action="updateAction.jsp" method="post">
		<input type="hidden" name="no" value="<%=no%>">

		<table class="table table-bordered" style="width: 300px;">
			<tr>
				<th>상품명</th>
				<td><input type="text" name="sangpum" width="120"
					required=required placeholder="상품명"
					value="<%=dto.getSangpum()%>"></td>
			</tr>

			<tr>
				<th>상품사진</th>
				<td><select name="photo" id="photo">
						<option value="../쇼핑몰사진/1.jpg"
						<%=dto.getPhoto().equals("../쇼핑몰사진/1.jpg")?"selected":"" %>>자켓</option>
						<option value="../쇼핑몰사진/2.jpg"
						<%=dto.getPhoto().equals("../쇼핑몰사진/2.jpg")?"selected":"" %>>코트</option>
						<option value="../쇼핑몰사진/3.jpg"
						<%=dto.getPhoto().equals("../쇼핑몰사진/3.jpg")?"selected":"" %>>니트</option>
						<option value="../쇼핑몰사진/4.jpg"
						<%=dto.getPhoto().equals("../쇼핑몰사진/4.jpg")?"selected":"" %>>바지</option>
						<option value="../쇼핑몰사진/5.jpg"
						<%=dto.getPhoto().equals("../쇼핑몰사진/5.jpg")?"selected":"" %>>상의</option>
				</select></td>
			</tr>

			<tr>
				<th>가격</th>
				<td><input type="text" name="price" width="120"
					required=required placeholder="가격" value="<%=dto.getPrice()%>"></td>
			</tr>

			<tr>
				<th>입고날짜</th>
				<td><input type="date" name="ipgoday" width="120"
					required=required value="<%=dto.getIpgoday()%>"></td>
			</tr>

			<tr>
				<td colspan="2" align=center>
					<button type="submit">수정</button>
					<button type="button" onclick="location.href='list.jsp'">목록</button>
				</td>
			</tr>
		</table>
	</form>

	<div>
		<img src="" id="selphoto">
	</div>
</body>
</html>