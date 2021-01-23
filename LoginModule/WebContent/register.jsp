<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Register </title>
</head>
<body>
<h1> Register Form </h1>

<form action="addregistration.jsp" method="post">

<h4>
First Name : <input type="text" name="fname" required> <br> <br>
Middle Name: <input type="text" name="mname"> <br> <br>
Last Name:	<input type="text" name="lname" required> <br> <br>
Gender : 	<input type="text"   name="gender" required> <br> <br>
Mobile No.:	<input type="tel" name="mobile" required> <br> <br>
Country:	<input type="text" name="country" required> <br> <br>
Email id:	<input type="email" name="uname" required> <br> <br>
Password:	<input type="password" name="password" required> <br> <br>
</h4>

<h3>
<input type="submit" value="Register">
</h3>




</form>

</body>
</html>