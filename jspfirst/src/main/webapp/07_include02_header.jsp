<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	int pageCount = 0;

	void addCount() {
		pageCount++;
	}

	void resetCount() {
		pageCount = 0;
		System.out.println("출력");
	}
	%>
<%
addCount();
%>
<%
// int pageCount = 0;
// pageCount++;
%>
<p>
	이 사이트 방문은
	<%=pageCount%>번째 입니다.
</p>
