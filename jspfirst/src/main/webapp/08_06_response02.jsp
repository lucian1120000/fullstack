<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int idx = 0;
	String color = "#fff";
	String[] bgColor = { "#f00", "#0f0", "#00f", "#ff0", "#0ff"};
	
	String bgChange() {
		color = bgColor[idx];
		if (idx == (bgColor.length -1)) idx = 0;
		else idx++;
		return color;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:<%=bgChange()%>">
 <p>이 페이지는 5초마다 새로고침이 됩니다.</p>
 <% response.setIntHeader("Refresh", 5);%>
 <p><%=(new java.util.Date())%></p>
</body>
</html>