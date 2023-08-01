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
	<button type="button" class="btn btn-info" id="btn1">data1.xml</button>
	<button type="button" class="btn btn-info" id="btn2">data2.json</button>
	<br>
	<button type="button" class="btn btn-info" id="btn3">data3.xml</button>
	<button type="button" class="btn btn-info" id="btn4">data4.json</button>
	<br>
	<br>
	<div id="result">출력하는 곳</div>

	<script type="text/javascript">
		$("#btn1").click(function() {
			//alert("클릭!!!");
			//ajax로 xml읽기
			var s = "";
			$.ajax({
				type : "get",
				url : "data1.xml",
				dataType : "xml",
				success : function(data) {
					var len = $(data).length;
					//alert(len + "개");
					s = "City: " + $(data).find("name").attr("city") + "<br>";
					s += "Name: " + $(data).find("name").text() + "<br>";
					s += "Hp: " + $(data).find("hp").text();

					$("#result").html(s);
				}

			});
		});

		$("#btn2").click(function() {
			$("#result").empty();

			// json 하나짜리 읽기
			var s = "";

			$.ajax({
				type : "get",
				url : "data2.json",
				dataType : "json",
				success : function(data) {
					s += "이름: " + data.name + "<br>";
					s += "핸드폰: " + data.hp + "<br>";
					s += "점수: " + data.score + "점<br>";

					$("#result").append(s);
				}

			});
		});

		$("#btn3").click(function() {
			$("#result").empty();

			//xml여러개 읽기
			//$(selector).each(function(인덱스, 엘리먼트))

			var s = "";
			$.ajax({
				type : "get",
				url : "data3.xml",
				dataType : "xml",
				success : function(data) {

					//idx는 0부터, ele는 각 태그값, 여기서는 stu 각각이 ele로 넘어옴
					$(data).find("stu").each(function(idx, ele) {
						var e = $(ele);

						s += "Idx: " + idx + "<br>";
						s += "Name: " + e.attr("name") + "<br>";
						s += "Java: " + e.find("java").text() + "<br>";
						s += "Oracle: " + e.find("oracle").text() + "<br>";
						s += "Ajax: " + e.find("ajax").text() + "<br>";
						s += "------------------------------------<br>";
					});

					$("#result").append(s);
				}
			});
		});
		
		$("#btn4").click(function(){
			$("#result").empty();
			
			var s ="";
			
			$.ajax({
				type:"get",
				url:"data4.json",
				dataType:"json",
				success:function(data){
					
					//json에서는 배열형태의 여러개 읽을경우
					$.each(data,function(idx, ele){
						s+="idx: " + idx + "<br>";
						s+="Name: " + ele.name + "<br>";
						s+="Hobby: " + ele.hobby + "<br>";
						s+="Hp: " + ele.hp + "<br>";
						s+="Addr: " + (ele.addr==null?"홈리스":ele.addr) + "<br>";
						s+="============================<br>";
					});
					
					$("#result").append(s);
				}
			});
		});
	</script>
</body>
</html>