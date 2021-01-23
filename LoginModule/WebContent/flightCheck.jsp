     <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Flight Details </title>
</head>
<body>


 <table cellpadding="8" cellspacing="5" border="5">
      <thead>
        <tr>
         <th> Flight Name</th>
          <th>Source</th>
          <th> Destination</th>
          <th> Time</th>
          <th>Price</th>
          <th> Book Now</th>
        </tr>
      </thead>
    </table>
	
	
<table cellpadding="13" cellspacing="5" border="5">
      <tbody>
       
        
      <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <% try {
  		  
  		String source =  request.getParameter("source");
  		String destination =  request.getParameter("destination");
  		Connection con = ConnectionProvider.getCon();
  		Statement st = con.createStatement();
  		ResultSet rs = st.executeQuery("select * from plane where source='"+source+"' and destination='"+destination+"'");
  		while(rs.next())
  		{
  		%>	
  		
        <tr>
          <td><%=rs.getString(1)%></td>
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><a href="Ticket.jsp?id=<%=rs.getString(1)%>"> Book Now</a></td>
        </tr>
  		
  		<%}
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>
    
	   
	  
</body>
</html>