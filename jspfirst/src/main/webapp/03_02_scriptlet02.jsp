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
	for (int i = 0; i <= 10; i++) {
		if (i % 2 == 0)
			out.println(i + "<br>");
	}
	%>
	<table>
	<tr><th>번호</th><th>나이</th><th>순서</th></tr>
		<%
		for (int i = 0; i <= 10; i++) {
		%>
		<tr>
			<td><%=i%></td>
		</tr>
		<tr>
			<td><%=i%></td>
		</tr>
		<tr>
			<td><%=i%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>