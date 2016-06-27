<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Lease</title>
		<link rel="stylesheet" type="text/css" href="rent.css">
	</head>
	<body>
	<div id="Wrapper">
	<div>
	<input id=buttn style="font-size: 20px;
    font-family: monospace;
    float:right;
    margin-right: 30px;
    margin-top: 10px;" type="button" value="Go Back!" onclick="window.location.href='lease_options.html'">
            </div>
            
		<div id="rent-list">
		<span style="font-size:50px;text-align:center;font-family:monospace;color:white"> Enter your details </span>
		<form action="lease_db.jsp" method="post">
			<ul class="rent">
			<li> House type<select name="house_type" style="margin-left:20px;height:22px;width:180px">
					<option value="1BHK">1BHK</option>
					<option value="2BHK">2BHK</option>
					<option value="3BHK">3BHK</option>
					<option value="4BHK">4BHK</option>
					<option value="Penthouse">Penthouse</option>
					<option value="Studio Apartment">Studio Apartments</option>
					
					</select>
			<li> House no<input type="text" name="house" style="margin-left:48px"></li>
			<li> Lane no <input type="text" name="lane" style="margin-left:55px"></li>
			<li> Street name<input type="text" name="street" style="margin-left:10px"></li>
			<li> Locality <input type="text" name="locality" style="margin-left:60px"></li>
			<li> City <input type="text" name="city" style="margin-left:110px"></li>
			<li>Pincode <input type="text" name="pincode" style="margin-left:50px"></li>
			<li> State <select name="state" style="margin-left:90px">
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunanchal Pradesh">Arunanchal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chattisgarh">Chattisgarh</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerela">Kerela</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Odisha">Odisha</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Telangana">Telangana</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="West Bengal">West Bengal</option>
						</select>
						</li>
				<li> Expected Rent: <input type="text" name="rent">
		</ul>
		
		<br><br><br>
		<input name="rentbtn" type="submit" value="Submit" style="margin-left:50px;font-size:28px;font-family:verdana;text-align:center;color:black;border:2px solid black;border-radius:5px"> 
		</form>
		</div>
		
	</div>
</body>
</html>
	
				
						