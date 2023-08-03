<%@page import="model.sinsang.SinsangDto"%>
<%@page import="java.util.Vector"%>
<%@page import="model.sinsang.SinsangDao"%>
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
<%
	SinsangDao dao = new SinsangDao();
	Vector<SinsangDto> list = dao.getAllDatas();
	
%>
<body>
<button type="button" class="btn btn-info" onclick="location.href='insertForm.jsp'">데이터추가</button>
<br>
<table class="table table-bordered" style="width: 700px;">
<tr class="table-warning" style="text-align: center">
<th width="60">번호</th>
<th width="100">이름</th>
<th width="250">주소</th>
<th width="250">날짜</th>
<th width="150">편집</th>
</tr>

<%
	for(int i=0; i<list.size();i++){
		SinsangDto dto = list.get(i);
		%>
		<tr>
		<td><%=(i+1)%></td>
		<td><%=dto.getName()%></td>
		<td><%=dto.getAddr()%></td>
		<td><%=dto.getSdate()%></td>
		<td><button type="button" class="btn btn-info btn-sm" onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
		<%--멤버값을 받는 방법 --%>
		<button type="button" class="btn btn-danger btn-sm" onclick="location.href='delete.jsp?num=<%=dto.getNum()%>'">삭제</button></td>
		</tr>
		
	<%}
%>
</table>
</body>
</html>