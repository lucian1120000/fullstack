<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object</title>
</head>
<body>
	<ul>
        <li>요청정보 포로토콜 = <%= request.getProtocol() %></li>
        <li>요청정보 전송방식 = <%= request.getMethod() %></li>
        <li>
            현재페이지의 URI(요청 URI) = <%= request.getRequestURI() %> <br>
            현재페이지의 URL(요청 URL) = <%= request.getRequestURL() %> <br>
            <small style="color:red">URL에서 현재페이지의 경로를 구함. String으로 반환</small>
        </li>
        <li>
            컨텍스트(프로젝트, 애플리케이션) 경로 = <%= request.getContextPath() %> <br>
            <small style="color: red;">현재 페이지의 컨텍스트 경로를 구함. String으로 반환</small>
        </li>
        <li>서버이름(연결시 사용한 서버 이름) = <%= request.getServerName() %></li>
        <li>서버포트 = <%= request.getServerPort() %></li>
        <li>
            쿼리문자열 : <%=request.getQueryString() %>
        </li>
    </ul>
</body>
</html>