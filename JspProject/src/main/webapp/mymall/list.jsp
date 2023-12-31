<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.mymall.MallDao"%>
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
	MallDao dao = new MallDao();
	ArrayList<MallDto> list = dao.selectMyMall();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	NumberFormat nf = NumberFormat.getCurrencyInstance();

%>
<body>
<button type="button" onclick="location='addForm.jsp'" class="btn btn-outline-info">상품추가</button><br>
	<br>
	<table class="table table-bordered" style="width:800px;">
	<tr align="center" class="table-warning">
	<th width="60">번호</th>
	<th width="140">상품명</th>
	<th width="120">상품사진</th>
	<th width="100">가격</th>
	<th width="200">입고일</th>
	<th width="200">등록일</th>
	<th width="160">수정|삭제</th>
	</tr>
	
	
	
	<%if(list.size()==0){ 
	%>
	<tr>
	<td colspan="6" align="center">
	<h5>등록된 상품이 없습니다</h5>
	</td>
	</tr>
	

<% }else{
	
	

	for(int i=0; i<list.size();i++){
		MallDto dto = list.get(i);
		%>
		
		<tr>
		<td align="center" valign="middle"><%=(i+1)%></td>
		<td align="center" valign="middle"><%=dto.getSangpum()%></td>
		<td align="center"><a href="detailpage.jsp?no=<%=dto.getNo()%>"><img src='<%=dto.getPhoto()%>' width="100"></a></td>
		<td align="center" valign="middle"><%=dto.getPrice()%></td>
		<td align="center" valign="middle"><%=dto.getIpgoday()%></td>
		<td align="center" valign="middle"><%=sdf.format(dto.getWriteday())%></td>
		<td valign="middle"><button type="button" class="btn btn-outline-info btn-sm" onclick="location.href='updateForm.jsp?no=<%=dto.getNo()%>'">수정</button>
		<button type="button" class="btn btn-outline-danger btn-sm" onclick="dd(<%=dto.getNo()%>)">삭제</button></td>
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