<%@ page import="project.ConnectionProvider" %>
    <%@ page import="java.sql.*"%>
    
    
<%
String fname =  request.getParameter("fname");
String mname =  request.getParameter("mname");
String lname =  request.getParameter("lname");
String gender =  request.getParameter("gender");
String mobile =  request.getParameter("mobile");
String country =  request.getParameter("country");
String uname =  request.getParameter("uname");
String password =  request.getParameter("password");



try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("insert into data values('"+fname+"','"+mname+"','"+lname+"','"+gender+"','"+mobile+"','"+country+"','"+uname+"','"+password+"')");
	response.sendRedirect("Index.jsp");
}

catch (Exception e)
{
	out.println(e);
}

%>