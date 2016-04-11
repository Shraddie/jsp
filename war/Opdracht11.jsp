<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Opdracht 11</title>
	</head>
	<body>
		<%
			long lowest = Long.MAX_VALUE;
			long highest = Long.MIN_VALUE;
			String tekst = "";
			
			try {
				
				if (request.getParameter("submit") != null) {
					lowest = Long.parseLong(request.getParameter("lowest"));
					highest = Long.parseLong(request.getParameter("highest"));
				}
			}
			catch (NumberFormatException e) {
				tekst = "Foute invoer, u moet een geheel getal invoeren";
			}
		%>
		<form>
			<input type="text" name="input" value="">
			<input type="submit" name="submit" value="OK">
			<input type="hidden" name="lowest" value="<%=lowest%>">
			<input type="hidden" name="highest" value="<%=highest%>">
		</form>
	</body>
</html>