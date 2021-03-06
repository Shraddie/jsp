<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="jsp.Auto"%>
<%@ page import="jsp.Autolijst"%>
<%
	Autolijst lijst = new Autolijst();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Webshop</title>
<style>
* {
	font-family: "Cambria";
}

::-webkit-input-placeholder { /* WebKit, Blink, Edge */
	color: black;
}

input {
	background-color: red;
	border-color: red;
	color: black;
}

select {
	color: black;
	background-color: red;
	border-color: red;
}

body {
	background-color: black;
}

div.autokader {
	float: left;
	margin: 1em;
	width: 220px;
	height: 120px;
	border: 1px solid black;
	border-radius: 25px;
	overflow: hidden;
	font-weight: bold;
	text-decoration: none;
	position: relative;
	background: -webkit-linear-gradient(right, rgba(127, 127, 127, 0),
		rgba(127, 127, 127, 1)); /* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(left, rgba(127, 127, 127, 0),
		rgba(127, 127, 127, 1)); /* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(left, rgba(127, 127, 127, 0),
		rgba(127, 127, 127, 1)); /* For Firefox 3.6 to 15 */
	background: linear-gradient(to left, rgba(127, 127, 127, 0),
		rgba(127, 127, 127, 1)); /* Standard syntax (must be last) */
}

div.autokader img {
	height: 80px;
	width: 120px;
	margin: 0;
	position: absolute;
	bottom: 0;
	left: 0;
}

div.autokader p.merktype {
	color: black;
	background-color: red;
	text-align: center;
	margin: 0px;
}

div.autokader p.prijs {
	color: red;
	text-align: right;
	margin-right: 1em;
}

div#autoselectie {
	max-width: 1200px;
}
</style>
</head>
<body>
	<form action="AutoWebshop.jsp" method="post">
		<select name="merk">
			<option value="alle">Alle auto's</option>
			<%
				for (String merk : lijst.getMerken()) {
					out.print("<option value='" + merk + "'>" + merk + "</option>");
				}
			%>
		</select> <input type="number" placeholder="Minimum prijs" name="min">
		<input type="number" placeholder="Maximum prijs" name="max"> 
		<input type="submit" value="OK" name="OK">
	</form>
	<%
		int min = 0;
		int max = 1000000;

		if (request.getParameter("OK") != null) {
			try {
				if (!(request.getParameter("min").equals(""))) {
					min = Integer.parseInt(request.getParameter("min"));
				}
				if (!(request.getParameter("max").equals(""))) {
					max = Integer.parseInt(request.getParameter("max"));
				}
			} catch (NumberFormatException e) {
				out.print("Geen geldige invoer<br>");
			}

			for (Auto auto : lijst.getLijst()) {

				if ((request.getParameter("merk").equals(auto.getMerk())
						|| request.getParameter("merk").equals("alle")) && auto.getPrijs() >= min
						&& auto.getPrijs() <= max) {
	%>
	<div class='autokader'>
		<img src='<%=auto.getFoto()%>' width='300px' height='75px'>
		<p class='merktype'><%=auto.getMerk() + " " + auto.getType()%></p>
		<p class='prijs'><%=auto.getPrijsFormat()%></p>
	</div>
	<%
		}
			}
		}

		else {
			for (Auto auto : lijst.getLijst()) {
				out.print("<div class='autokader'>");
				out.print("<img src='" + auto.getFoto() + "' width='300px' height='75px'>");
				out.print("<p class='merktype'>" + auto.getMerk() + " " + auto.getType() + "</p>");
				out.print("<p class='prijs'>");
				out.print("&euro;" + auto.getPrijsFormat());
				out.print("</p>");
				out.print("</div>");
			}
		}
	%>
</body>
</html>