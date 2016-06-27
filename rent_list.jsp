<%@page import="java.sql.*" %>
<%@page import="java.lang.String" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>RENT</title>
        <meta charset="UTF-8">
        
        <link rel="stylesheet" type="text/css" href="rent_list_css.css">
    </head>
    <body>
        <div id="Wrapper">
            <div id="logout">
            <input id=buttn style="font-size: 20px;
    font-family: monospace;
    float:right;
    margin-right: 30px;
    margin-top: 10px;" type="button" value="Go Back!" onclick="window.location.href='rent_options.html'">
    <input id=buttn type="button" value="LogOut" onclick="window.location.href='home.jsp'">
            </div>
            <%
            try
            {    
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_project", "root", "kanishk");
                Statement st = cn.createStatement();
                String sql="select l.*,s.phone,s.email,concat_ws(' ',fname,lname) as name from signup s inner join lease as l on l.username=s.username where type='"+request.getParameter("type")+"' AND locality='"+request.getParameter("locate")+"' AND state='"+request.getParameter("state")+"' AND city='"+request.getParameter("city")+"'";
                if(request.getParameter("search")!=null)
                {
                    rs=st.executeQuery(sql);
                
                    while(rs.next())
                    {
                    %>
                    <div class="match" style="position: relative;">
                        <table>
                        <tr><td>Owner's Name: <%=rs.getString(14)%></td>
                                <td>Property Type: <%=rs.getString(1)%></td></tr>
                            <tr>
                                <td>House No.: <%=rs.getString(2)%></td>
                                <td>Lane No.: <%=rs.getString(3)%></td></tr>
                            <tr>
                                <td>Street Name: <%=rs.getString(4)%></td>
                                <td>Locality : <%=rs.getString(5)%></td></tr>
                            <tr>
                            <td>City: <%=rs.getString(6)%></td>
                            <td>State :<%=rs.getString(8)%></td></tr>
                            <tr>
                                <td>Pincode : <%=rs.getString(7)%></td>
                                <td>Expected Rent: <%=rs.getString(11)%></td></tr>
                       <tr><td>Contact No. : <%=rs.getString(12)%></td>
                                <td>Email : <%=rs.getString(13)%></td>
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