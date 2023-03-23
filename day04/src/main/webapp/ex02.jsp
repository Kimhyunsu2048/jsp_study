<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%
	Enumeration<String> names = request.getHeaderNames();
	while(names.hasMoreElements()){
		String name = names.nextElement();
		String value = request.getHeader(name);
		out.write("name = "  + name + ",value = " + value +"<br>");
	}
%>