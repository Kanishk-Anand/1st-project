<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,java.io.*,java.lang.String,java.util.*" %>
    <%@page import="java.sql.ResultSet"%>

	<%@page import="java.sql.DriverManager"%>
	<%@page import="javax.naming.spi.DirStateFactory.Result"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
<%

String site="";
Connection conn;
  Statement st;
 
  ResultSet rs;
 String line1=request.getParameter("line1");
 
 String line2=request.getParameter("line2");
 
 String city=request.getParameter("city");
 int pincode=Integer.parseInt(request.getParameter("pin"));
 
 String state=request.getParameter("state");
 int rooms=Integer.parseInt(request.getParameter("rooms"));
 String gender=request.getParameter("gender");
 int persons=Integer.parseInt(request.getParameter("persons"));
 String facilities=request.getParameter("facilities");
 String furniture=request.getParameter("furniture");
 
 int rent=Integer.parseInt(request.getParameter("rent"));
 
 String user=String.valueOf(session.getAttribute("USER"));
 int i=0;
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_project","root","kanishk");
 st=conn.createStatement();
 i=st.executeUpdate("insert into lease_pg(pg_id,address_line1,address_line2,city,state,rooms_available,gender,persons,facilities,furniture,rent,username,pincode) values('0','"+line1+"','"+line2+"','"+city+"','"+state+"','"+rooms+"','"+gender+"','"+persons+"','"+facilities+"','"+furniture+"','"+rent+"','"+user+"','"+pincode+"')");
 
 
 if(i>0){
	 site = "lease_options.html";
 response.setStatus(response.SC_MOVED_TEMPORARILY);
 response.setHeader("Location", site); 
 	System.out.println(i);
 }
 else
 {
	 System.out.println(i);
 }
 }
 catch(Exception e)
 {
	 e.printStackTrace();
	 out.println(e);
 }
 %>