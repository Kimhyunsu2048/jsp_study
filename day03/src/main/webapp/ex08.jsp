<%@ page contentType="text/html; charset=utf-8"%>
<h1>페이지 상단 - ex08.jsp</h1>
<jsp:forward page="ex09.jsp"/>
	<jsp:param name="num1" value="10"/>
	<jsp:param name="num2" value="20"/>
</jsp:forward>
<h1>페이지 하단 - ex09.jsp</h1>