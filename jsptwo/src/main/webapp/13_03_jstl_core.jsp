<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html><head><title>core태그</title>
<% 
// pageContext.setAttribute("name", "홍길동"); 
// request.setAttribute("name", "고희동"); 
// session.setAttribute("name", "둘리"); 
// application.setAttribute("name", "마이콜"); 
%>
</head>
<body>
<%-- name: ${name}<br> --%>
<%-- <c:out value="${name}" />  --%>
<!-- c:out을 사용하는 이유 https://2ham-s.tistory.com/274 -->

<!-- <h2>c:set태그 - 변수의 값을 설정(setAttribute 와 동일한 역할을 한다.)</h2> -->
<c:set var="num" value="50"/>

<%-- <c:set var="num" >50</c:set> --%>
<%-- <c:set var="num" value ="50" scope="page"/> --%>
num값은 : ${num}<br><hr>

<!-- <h2>c:out태그 - 변수의 값을 출력</h2> -->
<%-- <c:out value="${num}" default="0"/>,  --%>
<%-- <c:out value="작성자" default="Admin" />,  --%>
<%-- <c:out value="hello world!!!!!!!" /><br><hr> --%>

<!-- <h2>c:forEach태그 - 반복문 수행</h2> -->
<!-- 범위안에서 반복문을 수행한다. for와 동일한 역할을 한다.<br> -->
<!-- begin : 초기 값, end : 마지막 값 , step : 증감값<br><br> -->

<%-- <c:out value="수식: resNum = {(i+num-2)%7}" /><br> --%>

<%-- <c:forEach var="i" begin="1" end="10" step="1"> --%>
<%-- 	<c:set var="resNum" value="${(i+num-2)%7}" /> --%>
<%-- 	<c:out value="num: ${num}" /> --%>
<%-- 	<c:out value="i: ${i}" /> --%>
<%-- 	<c:out value="resNum: ${resNum}" /><br> --%>
<%-- </c:forEach><hr> --%>

<!-- <table> -->
<%-- <c:forEach var="i" begin="1" end="10" step="1"> --%>
<%-- 	<tr><td>${i }</td></tr> --%>
<%-- </c:forEach> --%>
<!-- </table> -->


<h2>c:if태그 - 조건문 수행</h2>
조건문을 수행한다. if와 동일한 역할을 한다.<br>
<%-- <jsp:useBean id="memberBean" class="com.dto.MemberBean" /> --%>
<%-- <c:if test="${memberBean.name eq '이루마'}"> --%>
<%--    <p>이름은 ${memberBean.name}입니다.</p> --%>
<%-- </c:if><hr> --%>

<!-- <h2>c:choose / c:when태그 - 조건문 수행</h2> -->
<!-- if, else 구문 역할을 한다.<br> -->
<%-- <c:choose> --%>
<%--   <c:when test="${memberBean.name eq '고길동'}">	 --%>
<%--     <p>이름은1 ${memberBean.name}입니다.</p> --%>
<%--   </c:when> --%>
<%--   <c:when test="${memberBean.name eq '홍길순'}"> --%>
<%--      <p>이름은2 ${memberBean.name}입니다.</p> --%>
<%--   </c:when> --%>
<%--   <c:otherwise> --%>
<%--     <p>이름은3 ${memberBean.name}입니다.</p> --%>
<%--   </c:otherwise> --%>
<%-- </c:choose> --%>

<!-- 참고사이트: https://yunamom.tistory.com/179 -->
</body></html>