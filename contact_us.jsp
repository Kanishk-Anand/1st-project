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
String site = "" ;
String name=request.getParameter("name");
String email=request.getParameter("email");
String message=request.getParameter("message");
Connection conn;
Statement st;
ResultSet rs;
int i=0;
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_project","root","kanishk");
	st=conn.createStatement();
	i=st.executeUpdate("insert into contact_us values('"+name+"','"+email+"','"+message+"')");
	if(i>0)
	{
		site="option.html";
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 
		 
	}
}
catch(Exception e){
e.printStackTrace();
}
%>