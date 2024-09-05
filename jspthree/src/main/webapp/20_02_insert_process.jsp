<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
	<%@ include file="20_01_dbconn.jsp"%>
	<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");

	Statement stmt1 = null;
	PreparedStatement ps = null;	

	try {
// 		String sql = "insert into member(id, passwd, name) " + "values('" + id + "', '" + passwd + "', '" + name + "')";
// 		stmt = conn.createStatement();
// 		int cnt = stmt.executeUpdate(sql);
		
		String sql = "insert into member(id, passwd, name) " + "values(?, ?, ?)";
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, passwd);
		ps.setString(3, name);
		int cnt = ps.executeUpdate();
		
		
		if( cnt > 0 ) out.println("Member 테이블 삽입이 성공했습니다.<br>");
		else out.println("Member 테이블 삽입이 실패했습니다.<br>");
	} catch (SQLException ex) {
		out.println("SQLException: " + ex.getMessage());
	} finally {
		if (stmt1 != null)
			stmt1.close();
		if (conn != null)
			conn.close();
	}
	%>
</body>
</html>
