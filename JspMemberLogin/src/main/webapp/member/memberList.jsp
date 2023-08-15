<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.model.memberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.model.memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&family=Noto+Sans+KR:wght@500&family=Orbit&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
	img{
		border-radius: 100px;
		border: 2px solid gray;
	}
</style>


<title>Insert title here</title>
</head>
<%
memberDao dao = new memberDao();
ArrayList<memberDto> list = dao.selectMember();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<body>
	<div>
		<button type="button"class="btn btn-success btn-sm"
			id="btnlog" value="login" onclick="location.href='loginMain.jsp'">로그인</button>
			<button type="button"class="btn btn-info btn-sm"
			onclick="location.href='addForm.jsp'">회원가입</button>

	</div>
	<br>
	<table class="table table-bordered" style="width: 1200px;">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>회원명</th>
			<th>핸드폰</th>
			<th>가입일</th>
			<th>관리</th>
		</tr>
		<tr>
			총 회원수는
			<%=list.size()%>명입니다
		</tr>
		<br>
		<br>

		<%
		for (int i = 0; i < list.size(); i++) {
			memberDto dto = list.get(i);
		%>

		<tr>
			<td><%=(i + 1)%></td>
			<td><%=dto.getId()%></td>
			<td><%=dto.getName()%><br><img src='<%=dto.getImage()%>' width="100px;"
				height="100px;"></td>
			<td><%=dto.getHp()%></td>
			<td><%=sdf.format(dto.getGaip())%></td>
			<td><input type="button" class="btn btn-success btn-xs"
				value="수정" onclick="location.href='updateForm.jsp'"
				?num=<%=dto.getNum()%>> <input type="button"
				class="btn btn-danger btn-xs" value="삭제"
				onclick="location.href='deleteForm.jsp'" ?num=<%=dto.getNum()%>></td>
		</tr>
		<%
		}
		%>

	</table>



</body>
</html>