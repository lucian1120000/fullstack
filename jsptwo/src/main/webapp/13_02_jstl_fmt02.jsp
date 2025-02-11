<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html><html><head><title>Internationalization</title></head>
<body>
	<p>	--------기본 로케일--------</p>
	<fmt:setBundle basename="com.bundle.myBundle_m" var="resourceBundle" />
		
	<p>	제목 :<fmt:message key="title" bundle="${resourceBundle}" /></p>
	<p><fmt:message key="username" var="userMsg" bundle="${resourceBundle}" /></p>
	
	이름 : ${userMsg} <br><br>

	<p>	--------영문 로케일 --------</p>
	<fmt:setLocale value="en" />
	<fmt:setBundle basename="com.bundle.myBundle_m" var="resourceBundle" />
	<p>	제목 :<fmt:message key="title" bundle="${resourceBundle}" /></p>
	<p>	이름 :<fmt:message key="username" bundle="${resourceBundle}" /></p>
	
<%-- 	<fmt:setLocale value="ko" /> --%>
	<fmt:bundle basename="com.member">
		<p><fmt:message key="idKey" /> : <fmt:message key="id" /></p>
		<p><fmt:message key="passwordKey" />: <fmt:message key="password" /></p>
		<p><fmt:message key="nameKey" />: <fmt:message key="name" var="msg" />${msg}</p>
	</fmt:bundle>
	
</body>
</html>






