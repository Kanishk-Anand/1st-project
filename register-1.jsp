<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*,java.util.*,java.lang.String,java.io.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
 <title> Register </title>
</head>
<body>
 <div style="height:70%;width:100%">
  <img src="back.png">
   
  <br><br><br><br>
 <form action="insert.jsp" method="post">
  <div style="height:200px;width:200px;float:left;clear:none;position:relative;margin-top:-500px;margin-left:200px">
    <ul style="list-style:none;font-size:30px;font-family:Berlin Sans FB">
	 <li> First Name: </li>
	 <li> Last Name: </li>
	 <li> Email: </li>
	 <li> Phone no:</li>
	 <li> Username: </li>
	 <li> DOB: </li>
	 <li> Gender: </li>
	 <li> Password: </li>
	 <li> Confirm Password: </li>
	</ul>
   </div>
   <div style="height:200px;width:400px;float:right;margin-right:500px;clear:none;position:relative;margin-top:-500px">
    <ul style="list-style:none;font-size:28px">
	 <li> <input type="text" name="fname"> </li>
	 <li> <input type="text" name="lname"> </li>
	 <li> <input type="text" name="email"> </li>
	 <li> <input type="text" name="phone"> </li>
	 <li> <input type="text" name="username"> </li>
	 <li> <select name="day">
          <option value="1">1</option>
		  <option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			</select> 
			<select name="month">
			<option value="Jan">Jan</option>
			<option value="Feb">Feb</option>
			<option value="Mar">Mar</option>
			<option value="Apr">Apr</option>
			<option value="May">May</option>
			<option value="June">June</option>
			<option value="July">July</option>
			<option value="Aug">Aug</option>
			<option value="Sept">Sept</option>
			<option value="Oct">Oct</option>
			<option value="Nov">Nov</option>
			<option value="Dec">Dec</option>
			</select>
			<select name="year">
			<option value="1990">1975</option>
			<option value="1990">1976</option>
			<option value="1990">1977</option>
			<option value="1990">1978</option>
			<option value="1990">1979</option>
			<option value="1990">1980</option>
			<option value="1990">1981</option>
			<option value="1990">1982</option>
			<option value="1990">1983</option>
			<option value="1990">1984</option>
			<option value="1990">1985</option>
			<option value="1990">1986</option>
			<option value="1990">1987</option>
			<option value="1990">1988</option>
			<option value="1990">1989</option>
			 <option value="1990">1990</option>
			 <option value="1991">1991</option>
			 <option value="1992">1993</option>
			 <option value="1994">1994</option>
			 <option value="1995">1995</option>
			 <option value="1996">1996</option>
			 <option value="1997">1997</option>
			 <option value="1998">1998</option>
			 <option value="1999">1999</option>
			 <option value="2000">2000</option>
			 </select>
			</li>
			<li style="font-size:20px;padding:5px 5px 3px 5px"> <input type="radio" value="Male" name="gender">Male 
			     <input type="radio" value="Female" name="gender">Female
			</li>
			<li> <input type="password" name="temp"> </li>
			<li> <input type="password" name="password"></li>
		</ul>
	</div>
	<br>
	<p style="clear:both;margin-left:350px;margin-top:-150px"> <input type="submit" value="Submit" style="font-size:23px;background-color:#aaaaaa"></p>
	</form>
	</div>
	</body>
 </html>
  