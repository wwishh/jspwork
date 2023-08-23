
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.quiz.QuizBoardDao"%>
<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="java.util.List"%>
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
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	%>
	
	<script>
	/* 테이블 숨기기 */
	$(document).ready(function() {
		$('#chk').change(function() {
	        if ($(this).is(':checked')) {
	           $("#t").hide();
	        }
	        else {
	        	$("#t").show();
	        }
	    });
	})
	
	</script>

	<div>
		<h2 style="margin: 20px 10px">전체글보기</h2>
		<br> <b style="margin: 20px 10px"><%=list.size()%>개의 글</b>
		<button type="button" class="btn btn-outline-info btn-sm" onclick="location.href='quizform.jsp'">글쓰기</button>
		<div style="float: right; margin-right: 40px">
			<input type="checkbox" name="chk" id="chk">&nbsp;공지숨기기&nbsp;&nbsp;| <i
				class="bi bi-grid-fill" style="cursor: pointer"
				onclick="location.href='quizimagelist.jsp'"></i>&nbsp;&nbsp; <i
				class="bi bi-card-text" style="cursor: pointer"
				onclick="location.href='quizlist.jsp'"></i>
	</div>
	<hr class="myhr">
	</div>
	
	<table class="table table-striped" style="width:900px" id="t">
	<tr style="text-align:center">
	<th>번호</th>
	<th>작성자</th>
	<th>제목</th>
	<th>작성일</th>
	<th>조회수</th>
	</tr>
	
	
	<%for(int i=0; i<list.size();i++){ 
		QuizBoardDto dto = list.get(i); %>
	<tr style="text-align:center">
		<td><%=list.size()-i%></td>
		<td><%=dto.getWriter()%></td>
		<td><label style="cursor: pointer;" onclick="location.href='contentview.jsp?num=<%=dto.getQ_num()%>'"><%=dto.getTitle()%><img src="<%=dto.getImgname()%>" width="35px"></label></td>
		<td><%=sdf.format(dto.getWriteday()) %></td>
		<td><%=dto.getReadcount() %></td>
	</tr>
	<%} %>
	</table>
</body>
</html>