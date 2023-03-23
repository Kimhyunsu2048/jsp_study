<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="javax.servlet.http.*" %>
<%
	Cookie cookie1 = new Cookie("key1","value1");
	response.addCookie(cookie1);
%>