<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int data=50; %>
<%= "the result of data is" + data %>
<%!int Cube(int n) {
	return n*n*n;
}
	%>
	<%= "the o/p of cube(3)" %>

</body>
</html>