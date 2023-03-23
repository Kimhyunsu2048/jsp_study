<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/kanban?user=root&password=root";
	try (Connection conn = DriverManager.getConnection(url);
		Statement stmt = conn.createStatement()) {
		
		String sql = "INSERT INTO member (memId, memPw, memNm) " +
						   " VALUES ('user02', '123457', '사용자02')";
		
		/**
		String sql = "UPDATE member" + 
							" SET memPw='2345' " +
							" WHERE memId='user01'";
		*/
		//String sql = "DELETE FROM member WHERE memId='user02'";
		int cnt = stmt.executeUpdate(sql);
		System.out.println(cnt);
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
%>
