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

String site = "" ;
Connection conn;
  Statement st;
 
  ResultSet rs;
 String fname=request.getParameter("fname");
 
 String lname=request.getParameter("lname");
 
 String email=request.getParameter("email");
 
 String phone=request.getParameter("phone");
 
 String username=request.getParameter("username");
  String gender=request.getParameter("gender");
 
 String password=request.getParameter("password");
 
 String temp=request.getParameter("temp");
 
 String day=request.getParameter("day");
 
 String month=request.getParameter("month");
 
 String year=request.getParameter("year");
 int i=0;
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Enumeration driverList = DriverManager.getDrivers();
 while (driverList.hasMoreElements()) {
   Driver driverClass = (Driver) driverList.nextElement();
   System.out.println("   "+driverClass.getClass().getName());
 }
 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_project","root","kanishk");
 st=conn.createStatement();
 i=st.executeUpdate("insert into signup(fname,lname,email,phone,username,gender,password,day,month,year) values('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+username+"','"+gender+"','"+password+"','"+day+"','"+month+"','"+year+"')");
 
 
 if(i>0){
	 site = "home.jsp" ;
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