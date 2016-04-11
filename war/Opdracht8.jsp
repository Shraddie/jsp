<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht 8</title>
</head>
<body>
<form action="Opdracht8.jsp" method="get">
    <input type="text" name="invoer">
    <input type="submit" name="OK" value="OK">
<br>

<%
if (request.getParameter("OK") != null) {
	int input = Integer.parseInt(request.getParameter("invoer"));

for (int i = 1; i <= 10; i++) {
	out.println(i + " x " + input + " = " + (i * input) + "<br>");
	}
}
%>
</form>
</body>
</html>