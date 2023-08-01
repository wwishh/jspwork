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
<style>
body {
	font-family: "Orbit";
	font-size: 30px;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<button type=button class="btn btn-success" id="btn1">quiz.xml읽기</button>
	<br>
	<button type=button class="btn btn-success" id="btn2">quiz.json읽기</button>
	<br>
	<br>
	<div id=result>퀴즈 출력할 곳!!</div>

	<script>
	
	
		$("#btn1").click(function(){
			var s ="";
			
			$.ajax({
				type:"get",
				url:"quiz.xml",
				dataType:"xml",
				success:function(data){
					$(data).find("sawon").each(function(i, ele){
						var e = $(ele);
						s+= "부서번호: " + e.attr("no") + "<br>";
						s+= "부서: " + e.find("buseo").text() + "<br>";
						s+= "수당: " + e.find("pay").attr("sudang") + "<br>";
						s+= "급여: " + e.find("pay").text() + "<br><br>";
					});
					
					$("#result").html(s);
				}
			});
		});
		
		$("#btn2").click(function(){
			var s = "";
			
			$.ajax({
				type:"get",
				url:"quiz.json",
				dataType:"json",
				success:function(data){
					$.each(data,function(i, ele){
						s+= "순서: " + i + "<br>";
						s+= "이름: " +ele.name+"<br>";
						s+= "취미: " + (ele.hobby==null?"없음":ele.hobby) + "<br>";
						s+= "주소: " + ele.addr + "<br>";
						s+= "핸드폰: " + (ele.hp==null?"핸드폰 없어요ㅠ":ele.hp) + "<br><br>";
					});
					
					$("#result").html(s);
				}
			});
		});
		
	</script>

</body>
</html>