<%-- 
    Document   : admin
    Created on : Sep 17, 2017, 5:47:42 PM
    Author     : RE
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin Page</h1>
        <table border="1">
        <%!
        Connection con;
        Statement stm;
        ResultSet rest;
       
        %>
        <%
            try{
            con=connect.MysqlConnection.ConnectTo();
            stm=con.createStatement();
            rest=stm.executeQuery("Select *from sample");
            while(rest.next())
            {
                %>
                <tr>
                    <td>  <%=rest.getString("name")%></td>
                    <td><%= rest.getString("info")%></td>
                    <td> <%= rest.getString("username")%></td>
                    <td><%=rest.getString("pass")%></td>
                    <td> <%=rest.getString("type")%></td>
                    <td><a href="controller/update.jsp?id=<%=rest.getString("username") %>">Update</a></td>
                    <td><a href="controller/delete.jsp?id=<%=rest.getString("username") %>">Delete</a></td>
                            <td></td>
                        </tr>
          
           <%
            }
            con.close();
            }
            catch(Exception ex)
            {
                
            }
            
            %>
        </table>
    </body>
</html>
