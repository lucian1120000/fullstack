<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>회원관리 시스템 메인 페이지</title>
</head>
<body>
<%@ include file="../common/header.jsp"%> 
<h3><%=id %> 로 로그인하셨습니다.</h3>
<button type="button" onclick="location.href='<%=request.getContextPath() %>/loguot.jsp';">로그아웃</button>
<%if(id!=null && id.equals("admin")){%>
<a href="<%=request.getContextPath() %>/auth/member_list.jsp">관리자모드 접속(회원 목록 보기)</a>
<%}%>
</body>
</html>
			