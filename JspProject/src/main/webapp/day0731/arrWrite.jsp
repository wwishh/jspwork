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
	//배열선언
	String [] colors ={"green", "magenta", "gray", "yellow","cyan"};
	//제목
	String title="배열출력";
%>
<b><%=title %></b>


<table class="table table-borderd" style="width: 200px">
	
	<tr style="text-align: center">
	<th>번호</th>
	<th>색상</th>
	</tr>
	<%
	for(int i=0; i<colors.length;i++)
	{%>
	<tr>
		<td align="center"><%= i+1 %></td>
		<td><b style="color: <%=colors[i]%>"><%=colors[i] %></b></td>
	</tr>
	<%}
	%>
</table>

</body>
</html>