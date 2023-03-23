<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="html" value="<h1>테스트</h1>"/>
${html}<br>
<c:out value="${html}" escapeXml="false"/>
