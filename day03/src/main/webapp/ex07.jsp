<%@ page contentType="text/html; charset=utf-8"%>
<%
	String str1 = request.getParameter("str1");
	String str2 = request.getParameter("str2");
	out.print(str1);
	out.print(str2);
%>