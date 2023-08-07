<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//front에서 보낸 데이터 읽어오기

String photono = request.getParameter("photono");
String photoname = request.getParameter("photoname");
String like1 = request.getParameter("like1");
String like2 = request.getParameter("like2");
String like3 = request.getParameter("like3");


//총점 ==> String을 int로 변환

int sum = Integer.parseInt(like1) + Integer.parseInt(like2) + Integer.parseInt(like3);

//평균

double avg = (double)sum / 3;

//front형태로 만들어서 다시 front로 보내기(Json)
//ob.put("pho","../Food/"+1+".jpg")

JSONObject ob = new JSONObject();
		ob.put("photo","../Food/" + photono + ".jpg");
		ob.put("name", photoname);
		ob.put("score1", like1);
		ob.put("score2", like2);
		ob.put("score3", like3);
		ob.put("sum", sum);
		ob.put("avg", String.format("%.2f",avg));

%>

<%=ob.toString()%>