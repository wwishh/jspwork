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
	<form action="addAction.jsp" method="post">
		<table class="table table-bordered" style="width: 350px;">
			<tr>
				<th>이름</th>
				<td><input type="text" name="intro_name" width="120"
					required=required placeholder="이름"></td>
			</tr>

			<tr>
				<th>혈액형</th>
				<td><select name="intro_blood" id="intro_blood">
						<option value="A">A</option>
						<option value="B">B</option>
						<option value="O">O</option>
						<option value="AB">AB</option>
				</select></td>
			</tr>

			<tr>
				<th>전화번호</th>
				<td><select name="hp1" id="hp1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="019">019</option>
				</select> <input type="text" name="hp2" width="120" required=required
					placeholder="전화번호 가운데 4자리">-<input type="text" name="hp3"
					width="120" required=required placeholder="전화번호 끝 4자리"></td>
			</tr>

			<tr>
				<th>지역</th>
				<td><input type="radio" name="intro_city" value="서울">서울
				<input type="radio" name="intro_city" value="부산">부산
				<input type="radio" name="intro_city" value="인천">인천
				<input type="radio" name="intro_city" value="춘천">춘천
				<input type="radio" name="intro_city" value="남양주">남양주
				</td>
			</tr>

			<tr>
				<td colspan="2" align=center>
					<button type="submit">전송</button>
					<button type="button" onclick="location.href='list.jsp'">목록</button>
				</td>
			</tr>

		</table>
	</form>

</body>
</html>