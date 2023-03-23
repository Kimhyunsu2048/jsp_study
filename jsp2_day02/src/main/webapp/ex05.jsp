<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h1>상단</h1>
<c:import url="ex06.jsp">
	<c:param name="num1" value="100"/>
</c:import>

<c:import var="naver" url="https://www.naver.com"/>
<h1>하단</h1>