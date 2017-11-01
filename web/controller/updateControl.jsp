<%-- 
    Document   : updateControl
    Created on : Sep 20, 2017, 11:24:07 PM
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
        <%! 
      Connection con;
      Statement stm;
      ResultSet rest;
      %>
      <%
          con=connect.MysqlConnection.ConnectTo();
          String uname=request.getParameter("id");
          stm=con.createStatement();
       int a= stm.executeUpdate("update sample set name='"+request.getParameter("name") +"',info='"+request.getParameter("info") +"',pass='"+request.getParameter("pass")+"',type='"+request.getParameter("type")+"' where username='"+request.getParameter("id")+"'");
         if(a>0)
         {
             response.sendRedirect("../admin.jsp");
         }
       %>
    </body>
</html>
