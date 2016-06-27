<%@page import="java.sql.*" %>
<%@page import="java.lang.String" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>RENT</title>
        <meta charset="UTF-8">
        
        <link rel="stylesheet" type="text/css" href="pg_list_css.css">
    </head>
    <body>
        <div id="Wrapper">
            <div id="logout">
            <input id=buttn type="button" value="LogOut" onclick="window.location.href='home.jsp'">
            </div>
            <%
            try
            {    
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_project", "root", "kanishk");
                Statement st = cn.createStatement();
                //concat_ws(" ",fname,lname)as name from signusp
                String sql="select p.*,u.phone,u.email,concat_ws(' ',fname,lname)as 'name' from signup as u inner join lease_pg AS p on p.username=u.username where p.city='"+request.getParameter("city")+"' AND p.state='"+request.getParameter("state")+"' AND p.gender='"+request.getParameter("gender")+"'";
                if(request.getParameter("search")!=null)
                {
                    rs=st.executeQuery(sql);
                
                    while(rs.next())
                    {
                    %>
                    <div class="match" style="position: relative;">
                        <table>
                            <tr><td>Owner's Name: <%=rs.getString(16)%></td>
                                <td>Address: <%=rs.getString(2)%></td></tr>
                            <tr><td>Location: <%=rs.getString(3)%></td>
                                <td>City: <%=rs.getString(4)%></td></tr>
                            <tr><td>Pincode: <%=rs.getString(13)%></td>
                            <td>State: <%=rs.getString(5)%></td></tr>
                            <tr><td>Expected Rent: Rs.<%=rs.getString(11)%></td>
                                <td>Rooms Available :<%=rs.getString(6)%></td></tr>
                            <tr><td>Gender: <%=rs.getString(7)%></td>
                           <td>Persons:<%=rs.getString(8)%></td>
                        </tr>
                       <tr><td>Furniture: <%=rs.getString(10)%></td>
                           <td>Facilities:<%=rs.getString(9)%></td>
                        </tr>
                        <tr><td>Contact No.: <%=rs.getString(14)%></td>
                           <td>Email :<%=rs.getString(15)%></td>
                        </tr>
                        </table>
                    </div>
                        <%}%>
                    
                
                    <%    }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
        </div>
        
    </body>
</html>

