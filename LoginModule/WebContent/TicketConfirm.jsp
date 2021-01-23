  <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Details</title>
</head>
<body>

<%
String id=session.getAttribute("id").toString();
String pasName =  request.getParameter("pasName");
String pasNo =    request.getParameter("pasNo");
String pasEmail=  request.getParameter("pasEmail");
String pasPh= 	  request.getParameter("pasPh");
%>
<%
//session.setAttribute("id",id);

session.setAttribute("pasName",pasName);
session.setAttribute("pasNo",pasNo);
session.setAttribute("pasEmail",pasEmail);
session.setAttribute("pasPh",pasPh);

%>

<div>

<form>



<% try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from plane where id='"+id+"'");
		while(rs.next())
		{
		%>	

<center> <h2>  <u> Confirm Passenger Details </u>  </h2></center>
<fieldset>

 			Flight Name:	<td><%=rs.getString(2)%></td> 				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br> <br> 
     		Source:			<td><%=rs.getString(3)%></td>				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        	Destination: 	<td><%=rs.getString(4)%></td> 	 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<br> <br> 
      		Time: 			<td><%=rs.getString(5)%></td> 	 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       		Price: 			<td><%=rs.getString(6)%></td>
       		
 Passenger Name:	<%out.print(pasName); %> <br> <br>
 No. of Passenger: 	<%out.print(pasNo);	  %> <br> <br>
 Passenger Email: 	<%out.print(pasEmail);%> <br> <br>
 Passenger PhoneNo: <%out.print(pasPh);	  %> <br> <br>

		
		
	<%}
		
	  }
	  catch(Exception e)
	  {
		  
	  }
	  
	  %>

</fieldset>
 <a href="bookingprint.jsp"> Proceed pay</a>
</form>
</div>



</body>
</html>