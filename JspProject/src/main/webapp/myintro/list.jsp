<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.myintro.IntroDto"%>
<%@page import="java.util.ArrayList"%>
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
	IntroDao dao = new IntroDao();
	ArrayList<IntroDto> list = dao.selectMyIntro();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>

<body>
<button type="button" onclick="location='addForm.jsp'" class="btn btn-outline-info">데이터추가</button><br>
	<br>
	<table class="table table-bordered" style="width:800px;">
	<tr align="center" class="table-warning">
	<th width="60">번호</th>
	<th width="140">이름</th>
	<th width="120">혈액형</th>
	<th width="100">전화번호</th>
	<th width="200">지역</th>
	<th width="200">가입날짜</th>
	<th width="160">수정|삭제</th>
	</tr>
	
	
	
	<%if(list.size()==0){ 
	%>
	<tr>
	<td colspan="6" align="center">
	<h5>등록된 정보가 없습니다</h5>
	</td>
	</tr>
	

<% }else{
	
	

	for(int i=0; i<list.size();i++){
		IntroDto dto = list.get(i);
		%>
		
		<tr>
		<td align="center" valign="middle"><%=(i+1)%></td>
		<td align="center" valign="middle"><%=dto.getIntro_name()%></td>
		<td align="center"><%=dto.getIntro_blood()%></td>
		<td align="center" valign="middle"><%=dto.getIntro_hp()%></td>
		<td align="center" valign="middle"><%=dto.getIntro_city()%></td>
		<td align="center" valign="middle"><%=sdf.format(dto.getGaipday())%></td>
		<td valign="middle"><button type="button" class="btn btn-outline-info btn-sm" onclick="location.href='updateForm.jsp?no=<%=dto.getIntro_num()%>'">수정</button>
		<button type="button" class="btn btn-outline-danger btn-sm" onclick="dd(<%=dto.getIntro_num()%>)">삭제</button></td>
		</tr>
		
	<%}
}%>
	
	</table>
	
	<script>
	function dd(no){
		var a = confirm("정말로 삭제하시겠습니까?");
		
		if(a){
			location.href='malldelete.jsp?no=' + no;
		}
	}
	</script>

</body>
</html>