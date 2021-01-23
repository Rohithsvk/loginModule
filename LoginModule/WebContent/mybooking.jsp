   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> COnfiremed Tickets</title>
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
          <th> PasName</th>
           <th> PasNo</th>
            <th> PasEmail</th>
             <th> PasPh</th>
             <th> SeatNo: </th>
          
        </tr>
      </thead>
    </table>

<table cellpadding="8" cellspacing="5" border="5">
      <tbody>
       
        
      <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <% try {
  		Connection con = ConnectionProvider.getCon();
  		Statement st = 	con.createStatement();
  		ResultSet rs = st.executeQuery("select * from box");
  		while(rs.next())
  		{
  		%>	
  		
        <tr>
         <td><%=rs.getString(1)%></td>
         <td><%=rs.getString(2)%></td> 
     	 <td><%=rs.getString(3)%></td>
     	 <td><%=rs.getString(4)%></td>
     	 <td><%=rs.getString(5)%></td>
     	 <td><%=rs.getString(6)%></td>
     	 <td><%=rs.getString(7)%>"></td>
     	 <td><%=rs.getString(8)%></td>
     	 <td><%=rs.getString(9)%></td>
    	  <td><%=rs.getString(10)%></td>
    	  <td><%=rs.getString(11)%></td>
     
      </tr>
       
  		
  		<%}
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>
       </tbody>
       </table>
      <a href="Index.jsp"> Back </a>

</body>
</html>