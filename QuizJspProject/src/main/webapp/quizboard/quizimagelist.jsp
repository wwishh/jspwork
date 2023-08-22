<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="db.quiz.QuizBoardDao"%>
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
<style>
.myhr {
	border: 0;
	height: 10px;
	background-color: #ccc;
}
</style>
</head>
<body>
	<%
	QuizBoardDao dao = new QuizBoardDao();
	List<QuizBoardDto> list = dao.selectQuiz();
	%>
	

	<div>
		<h2 style="margin: 20px 10px">전체글보기</h2>
		<br> <b style="margin: 20px 10px"><%=list.size()%>개의 글</b>
		<div style="float: right; margin-right: 40px">
			<input type="checkbox">&nbsp;공지숨기기&nbsp;&nbsp;| <i
				class="bi bi-grid-fill" style="cursor: pointer"
				onclick="location.href='quizimagelist.jsp'"></i>&nbsp;&nbsp; <i
				class="bi bi-card-text" style="cursor: pointer"
				onclick="location.href='quizlist.jsp'"></i>
		</div>
		<hr class="myhr">
	</div>

	<div>
	<table style="width:500px">
			<tr>
		<%
		for (int i = 0; i < list.size(); i++) {
			QuizBoardDto dto = list.get(i);
		%>

		
				<td style="width:400px; height:300px"><img src="<%=dto.getImgname()%>" width="300px"><br>
					<b>작성자: <%=dto.getWriter()%></b><br> <b>제목: <%=dto.getTitle()%></b>
				</td>
			

		<%
		}
		%>
		</tr>
		</table>
	</div>
</body>
</html>