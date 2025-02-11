<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
	width: 60%;
	margin: 0 auto;
}

th {
	color: #fff;
	background-color: #555;
}

.tbr {
	border-right: 1px solid #fff !important;
}

td, th {
	border: 1px solid #555;
	padding: 20px;
}

tr>td:first-of-type {
	text-align: center;
}

h1 {
	text-align: center;
}
</style>
</head>
<body>
	<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		// String url = "jdbc:mariadb://localhost:3306/SID";
		// String url = "jdbc:mysql://localhost:3306/SID";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "test";
		String password = "1111";

		// Class.forName("org.mariadb.jdbc.Driver");
		// Class.forName("com.mysql.jdbc.Driver");
		Class.forName("oracle.jdbc.driver.OracleDriver"); // 수정된 부분
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("데이터베이스 연결이 성공되었습니다.");

		String sql = "SELECT * FROM dept";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
	%>
	<h1>부서 테이블의 데이터 정보</h1>
	<table>
		<colgroup>
			<col width="30%">
			<col width="30%">
			<col width="30%">
		</colgroup>
		<tr>
			<th class="tbr">부서번호</th>
			<th class="tbr">부서명</th>
			<th>위치</th>
		</tr>

		<%
		while (rs.next()) {
			String deptno = rs.getString("DEPTNO");
			String dname = rs.getString("DNAME");
			String loc = rs.getString("LOC");
		%>
		<tr>
			<td><%=deptno%></td>
			<td><%=dname%></td>
			<td><%=loc%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} catch (Exception e) {
	out.println("데이터베이스 연결이 실패하였거나, SQL문이 잘못되었습니다.<br>");
	out.println("SQLException: " + e.getMessage());
	} finally {
	if (rs != null)
		rs.close();
	if (stmt != null)
		stmt.close();
	if (conn != null)
		conn.close();
	}
	%>
</body>
</html>
