<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/madang?user=root&password=root";
	String sql = "CALL InsertBook(?,?,?,?)";
	try (Connection conn = DriverManager.getConnection(url);
		CallableStatement cstmt = conn.prepareCall(sql)) {
		cstmt.setInt(1, 99);
		cstmt.setString(2, "책99");
		cstmt.setString(3, "출판사99");
		cstmt.setInt(4, 30000);
		
		int cnt = cstmt.executeUpdate();
		System.out.println(cnt);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
%>