<%@page import="model.mymall.MallDao"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="java.sql.Timestamp"%>
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
	<%
	request.setCharacterEncoding("utf-8");
	String sangpum = request.getParameter("sangpum");
	String photo = request.getParameter("photo");
	String price = request.getParameter("price");
	String ipgoday = request.getParameter("ipgoday");
	String no = request.getParameter("no");
	
	MallDto dto = new MallDto();
	
	dto.setSangpum(sangpum);
	dto.setPhoto(photo);
	dto.setPrice(price);
	dto.setIpgoday(ipgoday);
	dto.setNo(no);
	
	MallDao dao = new MallDao();
	dao.updateMyMall(dto);
	
	response.sendRedirect("list.jsp");
	
	%>
</body>
</html>