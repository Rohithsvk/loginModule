<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="flightlist.jsp">
 Flight Name : <input type="text" name="flightname" required> <br> <br>
 source: <input type="text" name="source"> <br> <br>
 destination:	<input type="text" name="destination" required> <br> <br>
 time : 	<input type="text"   name="time" required> <br> <br>
price:	<input type="text" name="price" required> <br> <br>

<input type="submit" value="Add new Flight" > <br> <br>
</form>
</body>
</html>