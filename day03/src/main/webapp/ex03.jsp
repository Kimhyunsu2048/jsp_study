<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="num" value="10"/>
<c:if test="${num == 10}">
	10이 맞습니다.
</c:if>
<c:forEach var="n" begin="1" end="10">
	${n}<br>
</c:forEach>