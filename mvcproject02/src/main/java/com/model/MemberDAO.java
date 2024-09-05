package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection conn = null;

	private Connection getConnect() {
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}

	// 로그인 메소드
	public MemberVO login(String id, String pw) {
		String sql = "SELECT * FROM member WHERE id = ? AND password = ?";

		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberVO vo = null;

		try {
			conn = getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			rs = ps.executeQuery();

			if (rs.next()) {
				vo = new MemberVO();
				vo.setAddress(rs.getString("Address"));
				vo.setBirth(rs.getString("Birth"));
				vo.setGender(rs.getString("Gender"));
				vo.setId(rs.getString("Id"));
				vo.setMail(rs.getString("Mail"));
				vo.setName(rs.getString("Name"));
				vo.setPassword(rs.getString("Password"));
				vo.setPhone(rs.getString("Phone"));
				vo.setRegist_day(rs.getString("Regist_day"));
			}
			System.out.println("DAO vo: " + vo);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return vo;
	}
}
