<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>MVC</title>
</head>
<body>
	<a href="hello?name=관리자">hello서블릿 호출하기</a><br>
	
	<form method="post" action="member">
		<p>	아이디 : <input type="text" name="id"></p>
		<p>	비밀번호 : <input type="password" name="password"></p>
		<p>	<input type="submit" value="전송"></p>
	</form>
</body>
</html>