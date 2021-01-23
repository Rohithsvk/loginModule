<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  String id=session.getAttribute("id").toString(); 
String flightname =  request.getParameter("flightname");
String source =  request.getParameter("source");
String destination =  request.getParameter("destination");
String time =  request.getParameter("time");
String price =  request.getParameter("price");
String pasName =  request.getParameter("pasName");
String pasNo =    request.getParameter("pasNo");
String pasEmail=  request.getParameter("pasEmail");
String pasPh= 	  request.getParameter("pasPh");
%>

<h1> Your Tickets have booked Successfully</h1>
<h1> You can check in your <a href="mybooking.jsp"> My Booking</a></h1>


</body>
</html>