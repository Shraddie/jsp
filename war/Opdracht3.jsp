<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht 3</title>
</head>
<body>
<%  
 Calendar nu = Calendar.getInstance();
int huidigUur = nu.get(Calendar.HOUR_OF_DAY);
    
if (huidigUur < 6) {
	out.print("Goede nacht");
}
else if (huidigUur < 12){
	out.print("Goedemorgen");
}

else if (huidigUur < 18) {
	out.print("Goedemiddag");
}
    
else if (huidigUur < 24) {
	out.print("Goedeavond");
}

%>
</body>
</html>