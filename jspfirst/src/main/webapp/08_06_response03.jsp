<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//에러 코드표 참조 사이트: https://developer.mozilla.org/ko/docs/Web/HTTP/Status
		response.sendError(404, "요청 페이지를 찾을 수 없습니다");
	%>
</body>
</html>