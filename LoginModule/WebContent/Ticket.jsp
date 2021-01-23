    <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3> Hi ${username}, Welcome to FlyAway AirLines: </h3> <br>

<h4> You have to enter the passenger details here  </h4><br>

<%
String id =  request.getParameter("id");
//String flightname =  request.getParameter("flightname");
//String source =  request.getParameter("source");
//String destination =  request.getParameter("destination");
//String time =  request.getParameter("time");
//String price =  request.getParameter("price");




%>
 SESSION ID: <% out.println(id); 
session.setAttribute("id",id);

%> <br>
<% try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from plane where id='"+id+"'");
		while(rs.next())
		{
		%>	
		
    <tr>
      
        	 Flight Name: 	 <td><%=rs.getString(2)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		 Source:		<td><%=rs.getString(3)%></td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
        	Destination: 	<td><%=rs.getString(4)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		 Time: 			 <td><%=rs.getString(5)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
       		  Price: 		<td><%=rs.getString(6)%></td>
       
  
    </tr>
    

    
    
		
		<%}
		
	  }
	  catch(Exception e)
	  {
		  
	  }
	  
	  %>
	  
	  
  <h3> Enter Passenger Details:</h3>


	<form action="TicketConfirm.jsp" method="post">
<h3>  Add a Passenger: </h3>	 <br>
	Name: <input type="text" name="pasName" required> <br> <br>

	No. of Passengers: <input type="text" pattern="[123456789]{1}" maxlength="1" name="pasNo" required> <br> <br>
	Email. ID <input type="text" name="pasEmail"  required > <br> <br>
	Phone.No<input type="text" maxlength="10" placeholder="1234567890" pattern="[123456789][0-9]{9}" name="pasPh" required> <br> <br>
	
	<input type="submit" value="Proceed to pay">
	
	
	</form>



</body>
</html>