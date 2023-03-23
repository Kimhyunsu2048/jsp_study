<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	pageContext.setAttribute("num", 100);
	request.setAttribute("num", 200);
	application.setAttribute("num", 300);
%>
<!--<c:set var="num" value="100" scope="request"/>
${num} <br>-->
<c:remove var="page"/>
page - ${pageScope.num} <br>
request - ${requestScope.num} <br>
application - ${applicationScope.num} <br>

