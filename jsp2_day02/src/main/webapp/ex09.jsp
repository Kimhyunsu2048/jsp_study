<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date"  value="<%=new Date()%>" />
<fmt:formatDate type="date" value="${date}" dateStyle="short" />
<br>
<fmt:formatDate type="time" value="${date}" timeStyle="short" />
<br>
<fmt:formatDate type="both" value="${date}" dateStyle="full" timeStyle="long" />
<br>
<fmt:formatDate type="both" value="${date}" pattern="yyyy.MM.dd HH:mm E" />