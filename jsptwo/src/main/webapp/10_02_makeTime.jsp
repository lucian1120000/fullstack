<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Calendar, java.net.URLEncoder" %>
    <%
    	Calendar cal = Calendar.getInstance();
   		request.setAttribute("time", cal);
   		String path = "10_02_viewTime.jsp?time=" + URLEncoder.encode("시간", "UTF-8");
    %>
    <jsp:forward page="<%=path %>"/>