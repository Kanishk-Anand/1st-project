<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.io.*,java.lang.String,java.util.*" %>
    <%@page import="java.sql.ResultSet"%>

	<%@page import="java.sql.DriverManager"%>
	<%@page import="javax.naming.spi.DirStateFactory.Result"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String site="";
Connection conn;
  Statement st;
 
  ResultSet rs;
 String type=request.getParameter("house_type");
 
 String house_no=request.getParameter("house");
 
 String lane_no=request.getParameter("lane");
 
 String street_name=request.getParameter("street");
 
 String locality=request.getParameter("locality");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String pincode=request.getParameter("pincode");
 int pin=Integer.parseInt(pincode);
 int rent=Integer.parseInt(request.getParameter("rent"));
 String user=String.valueOf(session.getAttribute("USER"));
 int i=0;
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_project","root","kanishk");
 st=conn.createStatement();
 i=st.executeUpdate("insert into lease(type,house_no,lane_no,street_name,locality,city,pincode,state,username,rent) values('"+type+"','"+house_no+"','"+lane_no+"','"+street_name+"','"+locality+"','"+city+"','"+pin+"','"+state+"','"+user+"','"+rent+"')");
 
 
 if(i>0){
	 site = "option.jsp";
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
 }
 %>