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
<div style="margin:50px; 100px;">
	<form action="insertAction.jsp" method="post">
	<table class="table table-bordered" style="width: 500px">
	<caption align="top"><b>간단 방명록</b></caption>
	<tr>
	<th width="80" style="background-color: pink">닉네임</th>
	<td>
	<input type="text" name="nick" required="required" style="width:120px">
	</td>
	
	<th width="80" style="background-color: pink">비밀번호</th>
	<td>
	<input type="password" name="pass" required="required" style="width:120px">
	</td>
	</tr>
	
	<tr>
	<th width="80" style="background-color: pink">이미지선택</th>
	<td colspan="3">
		<%for(int i=1; i<=10; i++){ %>
			<label><img src="../image/f<%=i %>.png" width="50">
			<input type="radio" name="image" value="<%=i %>" <%=i==3?"checked":""%>>&nbsp;</label>
	<%} %>
	</td>
	</tr>
	
	<tr>
	<td colspan="4">
	<textarea style="width:480px; height:150px" name="story"></textarea>
	</td>
	</tr>
	
	<tr>
	<td colspan="4">
	<input type="submit" value="저장" class="btn btn-outline-info">
	<input type="button" value="목록" class="btn btn-outline-success" onclick="location.href='guestList.jsp'">
	</td>
	</tr>
	</table>
	</form>
	</div>
	
</body>
</html>