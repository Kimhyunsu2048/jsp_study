<%@ page contentType="text/html; charset=utf-8"%>
<h1>페이지 상단 - ex11.jsp</h1>
<jsp:include page="header.jsp"/>
<jsp:include page="ex09.jsp"/>
	<jsp:param name="num1" value="10"/>
	<jsp:param name="num2" value="20"/>
</jsp:include>
<jsp:include page="footer.jsp"/>
<h1>페이지 하단 - ex11.jsp</h1>