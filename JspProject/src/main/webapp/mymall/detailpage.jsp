<%@page import="java.text.NumberFormat"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="model.mymall.MallDao"%>
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
div{
	display: inline-block;
}
</style>
</head>

<%
String no = request.getParameter("no");
MallDao dao = new MallDao();
MallDto dto = dao.getData(no);
NumberFormat nf = NumberFormat.getCurrencyInstance();
%>
<body>
<img src='<%=dto.getPhoto()%>' width="400">
<div>
<b>상품이름 <%=dto.getSangpum()%></b><br>
<b>상품가격 <%=nf.format(Integer.parseInt(dto.getPrice()))%></b><br>
<b>상품입고일 <%=dto.getIpgoday()%></b><br>

<button type="button" onclick="history.back()" class="btn btn-outline-info btn-lg">이전으로 가기</button>
</div>
</body>
</html>