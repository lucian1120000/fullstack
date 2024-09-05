<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<%
    String value = "자바";
    String encodedValue = URLEncoder.encode(value, "UTF-8");
//  response.sendRedirect("08_06_index.jsp?name=" + value);
	out.print("<script>alert('페이지 이동전')</script>"); //Redirect가 우선이라 무시됨 (if else문 사용해줘야 함)
    response.sendRedirect("./08_06_index.jsp?name=" + encodedValue);
%>