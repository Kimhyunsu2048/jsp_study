<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/kanban?user=root&password=root";
	String sql = "SELECT * FROM member WHERE memNm LIKE ?";
	try (Connection conn = DriverManager.getConnection(url);
		PreparedStatement pstmt = conn.prepareStatement(sql)) {

		pstmt.setString(1, "사용자%");
		
		ResultSet rs = pstmt.executeQuery();
		
		
		while(rs.next()) {
			int memNo = rs.getInt("memNo");
			String memId = rs.getString("memId");
			String memPw = rs.getString("memPw");
			String memNm = rs.getString("memNm");
			System.out.printf("%d, %s, %s, %s %n", memNo, memId, memPw, memNm);	
			
		}
		
		rs.close();
			
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
%>