<%@ page contentType="text/html; charset=utf-8"%>
<h1>안녕하세요!</h1>
<%
	int num1 = 10;
	int num2 = 20;
	int num3 = num1 + num2;
	out.print(num1 + "+" + num2 + "=" + num3);
	out.print(add(100, 200));
%>
<%=greet %>

<%!
	String greet = "안녕하세요!";

	int add(int num1, int num2){
		return num1 + num2;
	}
%>