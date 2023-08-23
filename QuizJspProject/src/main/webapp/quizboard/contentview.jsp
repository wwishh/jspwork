<%@page import="db.quiz.QuizBoardDto"%>
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
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String num = request.getParameter("num");
	QuizBoardDao dao = new QuizBoardDao();
	QuizBoardDto dto = dao.getData(num);
	dao.plusQuiz(num);
	%>
	<div>
		<h3>제목 : <%=dto.getTitle() %></h3>
		<h3>내용 : <%=dto.getContent()%></h3>
		<button type="button" class="btn btn-outline-warning" onclick="location.href='quizlist.jsp'"><i class="bi bi-arrow-left-square-fill">뒤로가기</i></button>
	</div>
</body>
</html>