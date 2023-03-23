<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/kanban?user=root&password=root";
	try (Connection conn = DriverManager.getConnection(url);
		Statement stmt = conn.createStatement()) {
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM member");
		while(rs.next()) {
			int memNo = rs.getInt("memNo");
			String memId = rs.getString("memId");
			String memPw = rs.getString("memPw");
			String memNm = rs.getString("memNm");
			System.out.printf("memNo = %d, memId = %s, memPw = %s, memNm = %s %n",
					memNo, memId, memPw, memNm);
		}
		rs.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
%>