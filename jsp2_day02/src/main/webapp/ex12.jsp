<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%=new java.util.Date() %>"/>
<fmt:setTimeZone value="America/New_York"/>
<fmt:formatDate type="both" value="${date}"/>

<br>
<fmt:setTimeZone var="timezone2" value="Asia/Hong_Kong"/>

<fmt:timeZone value="${timezone2 }">
<fmt:formatDate type="both" value="${date}"/>
</fmt:timeZone>