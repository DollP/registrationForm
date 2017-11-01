<%-- 
    Document   : delete
    Created on : Sep 20, 2017, 12:01:49 AM
    Author     : RE
--%>

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
        <%!
        Connection con;
        Statement stm;
        %>
        <%
            con=connect.MysqlConnection.ConnectTo();
            stm=con.createStatement();
           int i= stm.executeUpdate("Delete from sample where username='"+request.getParameter("id") +"'");
           if(i>0)
           
          {
              response.sendRedirect("../admin.jsp");
           }
            
        %>
 
   </body>
</html>
