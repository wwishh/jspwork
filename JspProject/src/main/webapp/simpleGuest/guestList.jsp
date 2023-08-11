<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
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
	<div style="margin: 50px 100px;">
		<button type="button" class="btn btn-success"
			onclick="location.href='insertForm.jsp'">글쓰기</button>
	</div>


	<%
	SimpleGuestDao dao = new SimpleGuestDao();
	ArrayList<SimpleGuestDto> list = dao.selectSG();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	%>


	<table class="table talbe-borered" style="width: 500px">
		<%
		if (list.size() == 0) {
		%>
		<tr class="form-control">
			<td>등록된 데이터가 없습니다</td>
		</tr>
		<%
		} else {
		%>
		<%
		for (int i = 0; i < list.size(); i++) {
			SimpleGuestDto dto = list.get(i);
		%>
		<tr>

			<th style="background-color: lightblue"><%=(list.size() - i)%></th>
			<th style="background-color: lightblue; text-align:right;"><span><%=dto.getNick()%></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span><%=sdf.format(dto.getWriteday())%></span></th>
		</tr>

		<tr>
			<td><img src="../image/f<%=dto.getImage()%>.png" width="100"></td>
			<td align="right"><%=dto.getStory()%></td>
		</tr>

		<tr>
			<td colspan="2" align="right">
			<input type="button" value="수정" class="btn btn-warning" onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">
			<input type="button" value="삭제" class="btn btn-danger" onclick="del(<%=dto.getPass()%>, <%=dto.getNum()%>)"></td>
		</tr>
		<%
		}
		}
		%>
	</table>
	
	<script>
		function del(pass, num){
			var input = prompt("비밀번호를 입력하세요");
			if(input==pass){
				location.href = "deleteAction.jsp?num=" +num;
			}
			else{
				alert("비밀번호가 일치하지 않습니다");
			}
		}
	</script>
	
</body>
</html>