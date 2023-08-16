<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="member.model.memberDao"%>
<%@page import="member.model.memberDto"%>
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

	String realPath = getServletContext().getRealPath("/upload");
	int uploadSize = 1024 * 1024 * 3;

	MultipartRequest multi = null;

	multi = new MultipartRequest(request, realPath, uploadSize, "utf-8", new DefaultFileRenamePolicy());

	memberDao dao = new memberDao();

	memberDto dto = new memberDto();

	dto.setNum(multi.getParameter("num"));
	dto.setPass(multi.getParameter("pass"));
	dto.setName(multi.getParameter("name"));
	dto.setHp(multi.getParameter("hp"));

	memberDto db = dao.getData(multi.getParameter("num"));
	String newimage = db.getImage();
	//dto.setImage(multi.getFilesystemName("uploadImage"));
	String photo = multi.getFilesystemName("uploadImage");

	if (photo == null)
		dto.setImage(newimage); //사진이 없는 경우
	else
		dto.setImage("../upload/" + photo); //사진선택한 경로

	dao.updateMember(dto);

	response.sendRedirect("memberList.jsp");
	%>
</body>
</html>