<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht 1</title>
</head>
<body>
<% 
	double bedrag = 113;
out.println("Jan: &euro; " + (bedrag / 4) + "<br>");
out.println("Ali: &euro; " + (bedrag / 4) + "<br>") ;
out.println("Jeanette: &euro; " + (bedrag / 4)  + "<br>");
out.println("Piet: &euro; " + (bedrag / 4)  + "<br>");

%>
</body>
</html>