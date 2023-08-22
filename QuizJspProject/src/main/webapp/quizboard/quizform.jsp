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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="quizaction.jsp" method="post" enctype="multipart/form-data">
		<table class="table table-bordered" style="width:420px; margin:30px 40px">
			<tr>
			<th valign="middle" style="text-align:center; width:80px">작성자</th>
			<td><input type="text" name="writer" class="form-control" required="required" style="width:200px"></td>
			</tr>
			
			<tr>
			<th valign="middle" style="text-align:center; width:80px">제목</th>
			<td><input type="text" name="title" class="form-control" required="required" style="width:200px"></td>
			</tr>
			
			<tr>
			<th valign="middle" style="text-align:center; width:80px">내용</th>
			<td>
				<textarea name="content" class="form-control" required="required" style="width:300px; height:150px"></textarea>
			</td>
			</tr>
			
			<tr>
			<th valign="middle" style="text-align:center; width:80px">이미지</th>
			<td><input type="file" name="imgname" class="form-control" style="width:200px"></td>
			</tr>
			
			<tr>
			<td colspan="2" align="center">
			<button type="submit" class="btn btn-outline-success"><i class="bi bi-check2-circle"></i>등록</button>
			<button type="button" class="btn btn-outline-secondary" onclick="location.href='quizlist.jsp'"><i class="bi bi-clipboard"></i>목록</button>
			</td>
			</tr>
			
		</table>
	</form>
</body>
</html>