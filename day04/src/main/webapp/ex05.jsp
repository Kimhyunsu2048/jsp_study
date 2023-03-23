<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/kanban";
	String sql = "INSERT INTO member (memId, memPw, memNm) VALUES (?, ?, ?)";
	try (Connection conn = DriverManager.getConnection(url,"root","root");
		PreparedStatement pstmt = conn.prepareStatement(sql)) {
		pstmt.setString(1, "user04");
		pstmt.setString(2, "123457");
		pstmt.setString(3, "사용자04");
		
		int cnt = pstmt.executeUpdate();
		System.out.println(cnt);		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
%>