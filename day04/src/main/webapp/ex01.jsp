<%@ page contentType="text/html; charset=utf-8"%>
<%
	pageContext.setAttribute("key","값0");
	request.setAttribute("key1","값1");
	application.setAttribute("key1","값2");
	//String value = (String)request.getAttribute("key1");
	//out.write(value);
%>
${pageScope.key1}
<br>
${requestScope.key1}
<br>
${applicationScope.key1}
