<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
<h1>Attribute 속성 사용하여 값 설정하고 받기</h1>
<%
    Calendar cal = (Calendar) request.getAttribute("time");
    if (cal == null) {
        cal = Calendar.getInstance(); 
    }
%>
현재 시간은
<%= (cal.get(Calendar.HOUR_OF_DAY) < 10 ? "0" : "") + cal.get(Calendar.HOUR_OF_DAY) %>시
<%= (cal.get(Calendar.MINUTE) < 10 ? "0" : "") + cal.get(Calendar.MINUTE) %>분
<%= (cal.get(Calendar.SECOND) < 10 ? "0" : "") + cal.get(Calendar.SECOND) %>초 입니다.
<hr>
파라미터로 받아온 값 : <%= request.getParameter("time") %>
</body>
</html>