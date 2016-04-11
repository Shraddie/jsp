<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
	long a = 1L;
	long b = 0L;
	long c = 1L;
%>
<title>Opdracht 4</title>
</head>
<body>
	<%
		for (int i = 0; i < 90; i++) {
			out.println(c + "<br>");
			a = b;
			b = c;
			c = a + b;
		}
	%>
</body>
</html>