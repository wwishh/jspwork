<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Gasoek+One&family=Nanum+Pen+Script&family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
  <%
    session.setAttribute("msg", "happy");
  	session.setMaxInactiveInterval(10);
  %>
  <h2>10초안에 눌러주세요!!!!</h2>
  <form action="SessionAction.jsp" method="post">
     <h2>가고싶은 여행지</h2>
     <input type="radio" value="베트남 3박4일" name="travel">베트남 3박4일&nbsp;
     <input type="radio" value="동유럽 9박10일" name="travel">동유럽 9박10일&nbsp;
     <input type="radio" value="서유럽 12박13일" name="travel">서유럽 12박13일&nbsp;
     <input type="radio" value="스페인 일주 8박9일" name="travel" checked="checked">스페인 일주 8박9일&nbsp;
     <input value="여행당첨" type="submit">
  </form>
</body>
</html>