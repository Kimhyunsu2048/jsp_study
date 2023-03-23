<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page info="자바 JSP 연습!" %>
<%@ page errorPage="ex01_error.jsp" %>
<%@ page isELignored="true" %>
<%
	LocalDateTime now = LocalDateTime.now();
	out.print(now);
	String info = this.getServletInfo();
	out.print("<br>");
	out.print(info);
	//String str=null;
	//str.toUpperCase();
%>
${param.num}