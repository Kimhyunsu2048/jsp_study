<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="javax.servlet.http.*" %>
<%
	//Cookie cookie = new Cookie("key2", "value2");
	//cookie.setMaxAge(60*60*24*7); // 7일후 쿠키 삭제됨
	//cookie.setPath("/board/test");
	//response.addCookie(cookie);
	
	Cookie[] cookies = request.getCookies();
	for (Cookie cookie : cookies) {
		String name = cookie.getName();
		if (name.indexOf("key") !=-1) {
			cookie.setMaxAge(0); // 만료시간0 -> 브라우저가 삭제
			response.addCookie(cookie);
		}
	}
%>