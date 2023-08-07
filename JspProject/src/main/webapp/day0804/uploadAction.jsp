<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	ServletContext context = getServletContext();
	String realFolder = context.getRealPath("/save");
	
	System.out.println("업로드경로:"+realFolder);
	
	int fileSize = 1024*1024*5;
	
	MultipartRequest multi = null;
	
	try{
		//DefaultFileRenamePolicy()는 파일명이 중복이어도 사용할 수 있게 해준다
	multi = new MultipartRequest(request, realFolder, fileSize, "utf-8", new DefaultFileRenamePolicy()); 
	
	String name = multi.getParameter("name");
	String title = multi.getParameter("title");
	String uploadFileName = multi.getFilesystemName("uploadFile");
	String originalFileName = multi.getOriginalFileName("uploadFile");
	%>
	
	<table class="table table-bordered" style="width:300px;">
	<tr>
	<th>이름</th>
	<td><%=name%></td>
	</tr>
	<tr>
	<th>제목</th>
	<td><%=title%></td>
	</tr>
	<tr>
	<th>업로드 파일명</th>
	<td><img src="../save/<%=uploadFileName%>"></td>
	</tr>
	
	<tr>
	<th>업로드 파일명</th>
	<td><%=originalFileName%></td>
	</tr>
	
	<tr>
	<td>
	<input type="button" value="업로드 다시하기" onclick="location.href='uploadForm.jsp'">
	</td>
	</tr>
	</table>
	
	<% }catch(Exception e){
		
	}
	
	%>
</body>
</html>