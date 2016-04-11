<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht 2</title>
</head>
<body>
<% 	int seconde = 1;
	int minuut = 60*seconde; 
	int uur = minuut*60;
	int dag = uur*24;
	int week = dag*7;	
	int jaar = dag*365;
	%>
<table border="1">
<tr><th>Eenheid</th><th>Aantal seconden</th>	</tr>
<tr>	<td>Minuut</td>	<td><%= minuut %></td>	</tr>
<tr>	<td>Uur</td>	<td><%= uur %></td>	</tr>
<tr>	<td>Dag</td>	<td><%= dag %></td>	</tr>
<tr>	<td>Week</td>	<td><%= week %></td>	</tr>
<tr>	<td>Jaar</td>	<td><%= jaar %></td>	</tr>
</table>
</body>
</html>