<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="member.model.memberDto"%>
<%@page import="member.model.memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String realPath = getServletContext().getRealPath("/upload");
int uploadSize = 1024 * 1024 * 3;

MultipartRequest multi = null;

multi = new MultipartRequest(request, realPath, uploadSize, "utf-8", new DefaultFileRenamePolicy());

memberDao dao = new memberDao();

memberDto dto = new memberDto();

dto.setId(multi.getParameter("id"));
dto.setPass(multi.getParameter("pass"));
dto.setName(multi.getParameter("name"));
dto.setHp(multi.getParameter("hp"));

//dto.setImage(multi.getFilesystemName("uploadImage"));
String photo = multi.getFilesystemName("uploadImage");

if (photo == null)
	dto.setImage("../image/noImg.jfif"); //사진이 없는 경우
else
	dto.setImage("../upload/" + photo); //사진선택한 경로

//db에 insert
dao.insertMember(dto);

//성공 후 이동
response.sendRedirect("memberList.jsp");
%>