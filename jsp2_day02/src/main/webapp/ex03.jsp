<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*, exam.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="num" begin="1" end="10" step="2">
	<h1>반복 : ${num}</h1>
</c:forEach>
<%
	String[] fruits = {"사과", "배", "귤"};
	pageContext.setAttribute("fruits", fruits);
%>

<c:forEach var="fruit" items="${fruits}">
	${fruit} <br>
</c:forEach>

<%
	List<Book> books = new ArrayList<>();
	books.add(new Book("책1", 10000));
	books.add(new Book("책2", 20000));
	books.add(new Book("책3", 30000));
	books.add(new Book("책4", 40000));
	books.add(new Book("책5", 50000));
%>
<c:set var="books" value="<%=books%>"/>
<c:forEach var="book" items="${books}" varStatus="status">
	<div>index : ${status.index}/count : ${status.count}/first : ${status.first}/last : ${status.last}</div>
	<div>${book.title}/${book.price}</div>
	<div>${status.current.title}/${status.current.price}</div>
</c:forEach>


