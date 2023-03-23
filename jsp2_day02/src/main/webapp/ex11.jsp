<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new java.util.Date()%>" />
<fmt:setLocale value="en_us"/>
<fmt:formatDate type="both" value="${date}" dateStyle="full" timeStyle="full"/> <br>

<fmt:setLocale value="ja_jp"/>
<fmt:formatDate type="both" value="${date}" dateStyle="full" timeStyle="full"/> <br>

<fmt:setLocale value="ko_kr"/>
<fmt:formatDate type="both" value="${date}" dateStyle="full" timeStyle="full"/> <br>