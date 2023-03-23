<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forTokens var="fruit" items="apple,mango#orange_melon" delims=",#_">
	${fruit}<br>
</c:forTokens>
<c:catch var="e">
<%
	int result = 10 / 0;
%>
</c:catch>
<c:if test= "${ ! empty e }">
	${e.message}
</c:if>
<c:redirect url="https://www.naver.com">
	<c:param name="num1" value="100"/>
	<c:param name="num2" value="200"/>
</c:redirect>
