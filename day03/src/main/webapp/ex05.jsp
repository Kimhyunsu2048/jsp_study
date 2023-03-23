<%@ page contentType="text/html; charset=utf-8"%>
<h1>페이지 - ex05.jsp</h1>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	out.print("num1 =" + num1);
	out.print("<br>");
	out.print("num2 =" + num2);
%>