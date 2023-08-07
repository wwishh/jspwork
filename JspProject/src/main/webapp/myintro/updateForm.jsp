<%@page import="model.myintro.IntroDto"%>
<%@page import="model.myintro.IntroDao"%>
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
String no = request.getParameter("no");
IntroDao dao = new IntroDao();
IntroDto dto = dao.getData(no);
%>

<body>
	<form action="updateAction.jsp" method="post">
		<input type="hidden" name="intro_num" value="<%=no%>">
		<table class="table table-bordered" style="width: 400px;">
			<tr>
				<th>이름</th>
				<td><input type="text" name="intro_name" width="120"
					required=required placeholder="이름" value="<%=dto.getIntro_name()%>"></td>
			</tr>

			<tr>
				<th>혈액형</th>
				<td><select name="intro_blood" id="intro_blood">
						<option value="A"
							<%=dto.getIntro_blood().equals("A") ? "selected" : ""%>>A</option>
						<option value="B"
							<%=dto.getIntro_blood().equals("B") ? "selected" : ""%>>B</option>
						<option value="O"
							<%=dto.getIntro_blood().equals("O") ? "selected" : ""%>>O</option>
						<option value="AB"
							<%=dto.getIntro_blood().equals("AB") ? "selected" : ""%>>AB</option>
				</select></td>
			</tr>

			<tr>
				<th>전화번호</th>
				<td><select name="hp1" id="hp1">
						<option value="010"
							<%=(dto.getIntro_hp()).substring(0, 3).equals("010") ? "selected" : ""%>>010</option>
						<option value="011"
							<%=(dto.getIntro_hp()).substring(0, 3).equals("011") ? "selected" : ""%>>011</option>
						<option value="019"
							<%=(dto.getIntro_hp()).substring(0, 3).equals("019") ? "selected" : ""%>>019</option>
				</select> <input type="text" name="hp2" style="width: 100px"
					required=required placeholder="가운데 4자리" id="hpcenter"
					value="<%=(dto.getIntro_hp()).substring(4, 8)%>"> - <input
					type="text" name="hp3" style="width: 100px" required=required
					placeholder="끝 4자리" id="hplast" value="<%=(dto.getIntro_hp()).substring(9)%>"></td>
			</tr>

			<tr>
				<th>지역</th>
				<td><input type="radio" name="intro_city" value="서울"
					<%=dto.getIntro_city().equals("서울") ? "checked" : ""%>>서울 <input
					type="radio" name="intro_city" value="부산"
					<%=dto.getIntro_city().equals("부산") ? "checked" : ""%>>부산 <input
					type="radio" name="intro_city" value="인천"
					<%=dto.getIntro_city().equals("인천") ? "checked" : ""%>>인천 <input
					type="radio" name="intro_city" value="춘천"
					<%=dto.getIntro_city().equals("춘천") ? "checked" : ""%>>춘천 <input
					type="radio" name="intro_city" value="남양주"
					<%=dto.getIntro_city().equals("남양주") ? "checked" : ""%>>남양주</td>
			</tr>

			<tr>
				<td colspan="2" align=center>
					<button type="submit" class="btn btn-outline-warning">수정</button>
					<button type="button" class="btn btn-outline-danger" onclick="location.href='list.jsp'">목록</button>
				</td>
			</tr>

		</table>
	</form>

	<script>
		$("#hpcenter").on("keyup", function() {
			var length = $("#hpcenter").val().length;
			if (length == 4) {
				$("#hplast").focus();
			}
		});
	</script>

</body>
</html>