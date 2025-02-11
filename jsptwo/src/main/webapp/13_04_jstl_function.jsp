<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html><html><head><title>함수 사용</title></head>
<body>
	<% String str1 ="Functions &lt;태그&gt;를 사용합니다. "; %>
	<c:set var="str1" value="<%=str1 %>" />
	<c:set var="str2" value="사용" />
	
	str1 = ${str1} <br>
	str2 = ${str2} <br>
	tokens = ${tokens} <br><hr>
	
	length(str1) = ${fn:length(str1)} <br>
	toUpperCase(str1) = "${fn:toUpperCase(str1)}" <br>
	toLowerCase(str1) = "${fn:toLowerCase(str1)}" <br>
	
	substring(str1, 3, 6) = "${fn:substring(str1, 3, 6)}" <br>
	substringAfter(str1, str2) = "${fn:substringAfter(str1, str2)}" <br>
	substringBefore(str1, str2) = "${fn:substringBefore(str1, str2)}" <br>
	
	trim(str1) = "${fn:trim(str1)}" <br>
	replace(str1, src, dest) = "${fn:replace(str1, " ", "-")}" <br>
	indexOf(str1, str2) = "${fn:indexOf(str1, str2)}" <br>
	
	startsWith(str1, 'Fun') = "${fn:startsWith(str1, 'Fun')}" <br>
	endsWith(str1, '합니다.') = "${fn:endsWith(str1, '합니다.')}" <br>
	contains(str1, str2) = "${fn:contains(str1, str2)}" <br>
	
	<c:set var="smStr" value="java Server Page" />
	<c:set var="lgStr" value="JAVA" />
	containsIgnoreCase(str1, str2) = "${fn:containsIgnoreCase(smStr, lgStr)}" <br>
	
	<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />
	<c:set var="arr" value="${fn:split(tokens, ',')}" />
	join(arr, "-") = "${fn:join(arr, "-")}" <br>

</body>
</html>
