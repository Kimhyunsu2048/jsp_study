<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en" />
<fmt:setBundle basename="messages.common" />
<fmt:message var="login" key="login" />
<fmt:message key="greeting">
	<fmt:param>사용자01</fmt:param>
	<fmt:param>user01</fmt:param>
</fmt:message>
<form>
	<dl>
		<dt>${login}</dt>
		<dd>
			<input type="text" name="userId" />
		</dd>
	</dl>
	<dl>
		<dt>
			<fmt:message key="password" />
		</dt>
		<dd>
			<input type="password" name="password" />
		</dd>
	</dl>
	<button type="submit">${login}</button>
 </form>