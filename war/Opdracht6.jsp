<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<style>
			body {
				text-align: center;
				padding-top: 3.5vw;
				font: 1.8vw "Arial";
			}
			p {display: block;}
		</style>
		<title>Opdracht 6</title>
	</head>

	<body>
		<%
			for (int i = 1; i <= 10; i++) {
				out.println("<p>"+ i +" x 5 = "+ (i*5) +"</p>");
			}
		%>
	</body>
</html>