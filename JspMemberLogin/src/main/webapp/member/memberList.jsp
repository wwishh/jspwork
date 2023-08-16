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
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
img {
	border-radius: 100px;
	border: 2px solid gray;
}
=======
>>>>>>> Stashed changes
	img{
		border-radius: 100px;
		border: 2px solid gray;
	}
<<<<<<< Updated upstream
=======
>>>>>>> c130fa70b099d2b349ada7129b3d8894cd3f4a3a
>>>>>>> Stashed changes
</style>


<title>Insert title here</title>
<<<<<<< Updated upstream
=======
<<<<<<< HEAD


<script>
		function funcdel(num) {
			$("#btnmdel").attr("num",num);
			$("#myModal").modal();
			
			$(document).on("click", "#btnmdel",function(){
				location.href="deleteMember.jsp?num=" + $(this).attr("num");
			})
				

			
		}
	

	</script>
=======
>>>>>>> c130fa70b099d2b349ada7129b3d8894cd3f4a3a
>>>>>>> Stashed changes
</head>
<%
memberDao dao = new memberDao();
ArrayList<memberDto> list = dao.selectMember();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<body>
	<div>
<<<<<<< Updated upstream
		<button type="button"class="btn btn-success btn-sm"
			id="btnlog" value="login" onclick="location.href='loginMain.jsp'">로그인</button>
			<button type="button"class="btn btn-info btn-sm"
=======
<<<<<<< HEAD
		<button type="button" class="btn btn-success btn-sm" id="btnlog"
			value="login" onclick="location.href='loginMain.jsp'">로그인</button>
		<button type="button" class="btn btn-success btn-sm"
			onclick="location.href='logoutForm.jsp'">로그아웃</button>
		<button type="button" class="btn btn-info btn-sm"
=======
		<button type="button"class="btn btn-success btn-sm"
			id="btnlog" value="login" onclick="location.href='loginMain.jsp'">로그인</button>
			<button type="button"class="btn btn-info btn-sm"
>>>>>>> c130fa70b099d2b349ada7129b3d8894cd3f4a3a
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
			<td><%=dto.getName()%><br> <img src='<%=dto.getImage()%>'
				width="100px;" height="100px;"></td>
			<td><%=dto.getHp()%></td>
			<td><%=sdf.format(dto.getGaip())%></td>

			<%-- <%
			if(loginok!=null && dto.getId().equlas(id)){
			%> --%>

			<td><input type="button" class="btn btn-success btn-xs"
				value="수정"
				onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">
				<input type="button" class="btn btn-danger btn-xs" value="삭제"
				onclick="funcdel(<%=dto.getNum()%>)">
				 <%-- <%}else{ %>
				<h5>권한없음</h5>
				<%} %> --%></td>
=======
>>>>>>> Stashed changes
			<td><%=dto.getName()%><br><img src='<%=dto.getImage()%>' width="100px;"
				height="100px;"></td>
			<td><%=dto.getHp()%></td>
			<td><%=sdf.format(dto.getGaip())%></td>
			<td><input type="button" class="btn btn-success btn-xs"
				value="수정" onclick="location.href='updateForm.jsp'"
				?num=<%=dto.getNum()%>> <input type="button"
				class="btn btn-danger btn-xs" value="삭제"
				onclick="location.href='deleteForm.jsp'" ?num=<%=dto.getNum()%>></td>
<<<<<<< Updated upstream
=======
>>>>>>> c130fa70b099d2b349ada7129b3d8894cd3f4a3a
>>>>>>> Stashed changes
		</tr>
		<%
		}
		%>

	</table>

<<<<<<< Updated upstream
=======
<<<<<<< HEAD
	<form action="memberList.jsp">
		<div class="container">

			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog modal-sm">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">회원탈퇴</h4>
						</div>
						<div class="modal-body">
							<p>회원탈퇴를 원하시면 [탈퇴확인]을 눌러주세요</p>
							<button type="button" class="btn btn-danger" id="btnmdel" num="">탈퇴확인</button>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-defalut"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

		</div>
	</form>

=======
>>>>>>> c130fa70b099d2b349ada7129b3d8894cd3f4a3a
>>>>>>> Stashed changes


</body>
</html>