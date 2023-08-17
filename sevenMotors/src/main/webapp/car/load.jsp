<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>Website menu 06</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<style>
#mainMap{
margin-top: 30px;
padding-top : 45px;
text-align:center;
}

#map, #maptxt{
height: 500px;
display: inline-block;
}




ul{
list-style-type: none;
}
</style>

</head>
<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">찾아 오시는 길</h2>
				</div>
			</div>
		</div>
		
		
		
		
		
  
  
  
  
  

<div id="mainMap" class="border border-5">

		<div id="map">
			<!--제목 부분 -->
			<!-- <div class="title">
				<span>seven motors로 오시는 길을 안내해 드립니다.</span>
			</div> -->



			<!-- * 카카오맵 - 지도퍼가기 -->
			<!-- 1. 지도 노드 -->
			<div id="daumRoughmapContainer1692232051256"
				class="root_daum_roughmap root_daum_roughmap_landing"></div>

			<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
			<script charset="UTF-8" class="daum_roughmap_loader_script"
				src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

			<!-- 3. 실행 스크립트 -->
			<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1692232051256",
		"key" : "2fvzu",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>

		</div>

		<!-- 길 안내 텍스트 -->
		<div id="maptxt">
			<div class="top">
				<h4>
					<span class="mont">Gangnam SevenMotors Center</span> <br /> <b>강남세븐모터스센터</b>
				</h4>
				<p>
					서울 강남구 테헤란로 132(역삼동) 한독약품 빌딩 8층 <br /> <span class="mont">02-3482-4632~5</span>
				</p>
			</div>
			<div class="bot">
				<h5>
					<img src="../image/subway.png" width="30" alt="icon" /> 지하철 이용시
				</h5>
				<ul>
					<li>
						<h6>
							<span class="col01">2호선</span> 역삼역
						</h6>
						<p>3번출구 도보3분 거리</p>
					</li>
					<li>
						<h6>
							<span class="col01">2호선</span> 강남역
						</h6>
						<p>1번출구 도보5분 거리</p>
					</li>
				</ul>
				<h5>
					<img src="../image/bus.png" width="30" alt="icon" /> 버스 이용시
				</h5>
				<ul>
					<li class="w85">
						<h6>역삼역 하차</h6>
						<p>N13, N61, 146,341, 360, 740, 6000, 6020, 1100, 1700, 2000,
							2000-1, 7007, 8001</p>
					</li>
				</ul>
			</div>
		</div>
</div>
	</section>


	





</body>
</html>
