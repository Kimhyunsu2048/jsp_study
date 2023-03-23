<%@ page contentType="text/html; charset=utf-8" %>
<%@ page isErrorPage="true" %><%--exception 내장객체 --%>
<h1><%=exception.getMessage()%></h1>
<%
	exception.printStackTrace();
%>
