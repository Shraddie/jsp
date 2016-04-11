<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
// Rekenmachine
int getal1;
int getal2;
    String uitkomst = "";
    String foutboodschap = "";
%>

<h2>Rekenmachine</h2>

<%
try {
	if (request.getParameter("getal_1") != null && request.getParameter("getal_2") != null) {
		 getal1 = Integer.parseInt(request.getParameter("getal_1"));
		 getal2 = Integer.parseInt(request.getParameter("getal_2"));
		 
		 if	(request.getParameter("functie").equals("+")) {
			 uitkomst = "" + (getal1 + getal2);
		 } else if(request.getParameter("functie").equals("-")) {
			 uitkomst = "" + (getal1 - getal2);
		 } else if(request.getParameter("functie").equals("x")) {
			 uitkomst = "" + (getal1 * getal2);
		 } else if(request.getParameter("functie").equals("/")) {
			 uitkomst = "" + (getal1 / getal2);
		 }
		 
	}	
}
catch(NumberFormatException e) {
	foutboodschap = "Invalid Input";
}

%>

<form action="Rekenmachine.jsp" method="get">
    <table id="rekenmachine">

        <tr>
            <th colspan="2">Eerste getal</th>
            <th colspan="2">Tweede getal</th>
        </tr>
        <tr>
            <td colspan="2"><input name="getal_1" value="">
            </td>
            <td colspan="2"><input name="getal_2"></td>
        </tr>
        <tr>
            <td><input type="submit" name="functie" value="+"></td>
            <td><input type="submit" name="functie" value="-"></td>
            <td><input type="submit" name="functie" value="x"></td>
            <td><input type="submit" name="functie" value="/"></td>
        </tr>
        <tr>
            <td colspan="4">
                <%= foutboodschap %>
            </td>
            <td>
            </td>
        </tr>


    </table>
            <%= uitkomst %>
</form>
</body>
</html>