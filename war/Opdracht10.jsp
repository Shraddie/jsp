<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht 10</title>
</head>
<body>
<form action="Opdracht10.jsp" method="get">
		<input type="text" name="celsius">
		<input type="submit" name="OK" value="Reken om naar Fahrenheit">
		<br>
		<%
		int celsius;
		int fahr;
		String tekst = "";
		try {
			celsius = Integer.parseInt(request.getParameter("celsius"));
			fahr = Math.round(celsius * 1.8f + 32);
			tekst = celsius + " graden Celsius is " + fahr + " graden Fahrenheit";
		}
		catch(NumberFormatException e) {
			tekst = "Foute invoer, u moet een geheel getal invoeren";
		}
		finally {
			
		}
		%>
		<h2>Celsius naar fahrenheit</h2>
		<p><%= tekst %></p>
</form>
</body>
</html>