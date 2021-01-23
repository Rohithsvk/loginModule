     <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
</head>
<body>
<%
String id =  request.getParameter("id");
String flightname =  request.getParameter("flightname");
String source =  request.getParameter("source");
String destination =  request.getParameter("destination");
String time =  request.getParameter("time");
String price =  request.getParameter("price");


	Connection con = ConnectionProvider.getCon();
  		Statement st = con.createStatement();
  		st.executeUpdate("insert into plane (flightname,source,destination,time,price)  values('"+flightname+"','"+source+"','"+destination+"','"+time+"','"+price+"')");
  		response.sendRedirect("flightlist1.jsp");

%>



</body>
</html>