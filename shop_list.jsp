<%@page import="java.sql.*" %>
<%@page import="java.lang.String" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>RENT</title>
        <meta charset="UTF-8">
        
        <link rel="stylesheet" type="text/css" href="shop_list_css.css">
    </head>
    <body>
        <div id="Wrapper">
        <div id="logout">
            <input id=buttn style="font-size: 20px;
    font-family: monospace;
    float:right;
    margin-right: 30px;
    margin-top: 10px;" type="button" value="Go Back!" onclick="window.location.href='rent_shop.jsp'">
            
            <input id=buttn type="button" value="LogOut" onclick="window.location.href='home.jsp'">
            </div>
            <%
            try
            {    
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_project", "root", "kanishk");
                Statement st = cn.createStatement();
                String sql="select s.*,u.phone,u.email,concat_ws(' ',fname,lname) as name from signup As u inner join lease_shop AS s on s.username=u.username where city='"+request.getParameter("city")+"' AND state='"+request.getParameter("state")+"' AND shop_size='"+request.getParameter("size")+"'";
                if(request.getParameter("search")!=null)
                {
                    rs=st.executeQuery(sql);
                
                    while(rs.next())
                    {
                    %>
                    <div class="match" style="position: relative;">
                        <table>
                            <tr><td>Owner's Name: <%=rs.getString(15)%></td>
                                <td>Address: <%=rs.getString(2)%></td></tr>
                            <tr><td>Location: <%=rs.getString(3)%></td>
                                <td>City: <%=rs.getString(4)%></td></tr>
                            <tr><td>Pincode: <%=rs.getString(5)%></td>
                            <td>State: <%=rs.getString(6)%></td></tr>
                            <tr><td>Expected Rent: Rs.<%=rs.getString(11)%></td>
                                <td>Godown Available :<%=rs.getString(8)%></td></tr>
                       <tr><td>Furniture: <%=rs.getString(9)%></td>
                           <td>Shop Size:<%=rs.getString(7)%></td>
                        </tr>
                        <tr><td>Contact No.: <%=rs.getString(13)%></td>
                           <td>Email :<%=rs.getString(14)%></td>
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

