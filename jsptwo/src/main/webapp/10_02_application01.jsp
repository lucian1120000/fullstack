<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	속성 설정: <%= application.getAttribute("fruit") %>
    <%
    application.log("로그 메세지 기록");
    %>
    로그 메세지를 기록합니다.
</body>
</html>