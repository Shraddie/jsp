<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>


<style>
table#schaakbord {
        border: 1px solid black;
        border-collapse: collapse;
 }
#schaakbord td{
        width: 30px;
        height: 30px;
        border: 1px solid black;

}

#schaakbord td.zwart {
        background-color: black;
}
</style>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opdracht 5</title>
</head>
<body>
<table id="schaakbord">
<%for(int i = 0; i < 8; i++){ %>
<tr>
<%for(int j = 0; j < 8; j++){ 
    if((i + j) % 2 == 0) {
    	
    
%> 

<td class= "zwart"></td>

<% }   else    { %>

<td class="wit"></td>
<%}
}%>
</tr>
<% }
%>

</table>
</body>
</html>