<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
	<form method="post" action="20_02_insert_process.jsp">
	<p>
		아이디 : <input type="text" name="id">
	</p>
	<p>
		비밀번호 : <input type="password" name="passwd">
	</p>
	<p>
		이름 : <input type="text" name="name">
	</p>
	<p>
		<input type="submit" value="전송">
	</p>
</form>
</body>
</html>
