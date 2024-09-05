<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>우편번호: <%=request.getParameter("zipcode") %>
<br>주소: <%=request.getParameter("addr1")%>
<br>상세주소: <%=request.getParameter("addr2")%>
<br>참고사항: <%=request.getParameter("comment")%>
<hr>
<br>우편번호: ${zipcode}
<br>주소: ${addr1}
<br>상세주소: ${addr2}
<br>참고사항: ${comment}
<hr>
<jsp:useBean id="add" class="com.dto.AddrVo"/>
<jsp:setProperty property="*" name="add"/>
<br>우편번호: <jsp:getProperty property="zipcode" name="add"/>
<br>주소: <jsp:getProperty property="addr1" name="add"/>
<br>상세주소: <jsp:getProperty property="addr2" name="add"/>
<br>참고사항: <jsp:getProperty property="comment" name="add"/>

</body>
</html>