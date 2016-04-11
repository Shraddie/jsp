<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht 9</title>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>	
</head>
<body>
<script>$('#param').attr(value, "<%=request.getParameter("invoer")%>");</script>
<form action="Opdracht9.jsp" method="get" id="form">
    <input type="text" name="invoer">
    <input type="submit" name="OK" value="OK">
    <input type="submit" name="vorige" value="Vorige">
    <input type="submit" name="volgende" value="Volgende">
<br>

<%
int input = 0;
if (request.getParameter("OK") != null) {
	try {
		input = Integer.parseInt(request.getParameter("invoer"));
	    %><input form="form" type="hidden" name="param" value="<%=request.getParameter("invoer")%>" id="param"><%
	}
	catch (NumberFormatException e) {
		
	}
}
if (request.getParameter("volgende") != null) {
	try {
		input = Integer.parseInt(request.getParameter("param"))+1;
		%><input form="form" type="hidden" name="param" value="<%=input%>" id="param"><%
	}
	catch (NumberFormatException e) {
		
	}
}
if (request.getParameter("vorige") != null) {
	try {
		input = Integer.parseInt(request.getParameter("param"))-1;
		%><input form="form" type="hidden" name="param" value="<%=input%>" id="param"><%
	}
	catch (NumberFormatException e) {
		
	}
}

if (request.getParameter("OK") != null || request.getParameter("vorige") != null || request.getParameter("volgende") != null) {
	for (int i = 1; i <= 10; i++) {
		out.println(i + " x " + input + " = " + (i * input) + "<br>");
	}
}
%>
</form>
</body>
</html>