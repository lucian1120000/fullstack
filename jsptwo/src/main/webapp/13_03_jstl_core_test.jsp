<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
session.setAttribute("name", "<script>alert('하이!!');</script>");
response.sendRedirect("13_03_jstl_core.jsp");
%>