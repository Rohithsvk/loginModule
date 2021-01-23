   <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Confirmation Details</title>
</head>
<body>

<% 
String id			=session.getAttribute("id").toString();
//String flightname	=session.getAttribute("flightname").toString();
//String source		= session.getAttribute("source").toString();
//String destination	= session.getAttribute("destination").toString();
//String time= session.getAttribute("time").toString();
//String price= session.getAttribute("price").toString();
String pasName= session.getAttribute("pasName").toString();
String pasNo= session.getAttribute("pasNo").toString();
String pasEmail= session.getAttribute("pasEmail").toString();
String pasPh= session.getAttribute("pasPh").toString();


%>

<%


	Connection con = ConnectionProvider.getCon();
  	Statement st = con.createStatement();
  	st.executeUpdate("insert into box2  values('"+pasName+"','"+pasNo+"','"+pasEmail+"','"+pasPh+"')");
  	response.sendRedirect("payment.jsp");

%>



</body>
</html>