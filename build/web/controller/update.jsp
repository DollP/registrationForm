<%-- 
    Document   : update
    Created on : Sep 20, 2017, 12:01:29 AM
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
          try{
          con=connect.MysqlConnection.ConnectTo();
          String uname=request.getParameter("id");
          String sql="Select *from sample where username='"+uname+"'";
          stm=con.createStatement();
          rest=stm.executeQuery(sql);
          while(rest.next()){
          
      %>
      <form action="updateControl.jsp">
            <pre>
                NAME            :   <input type="text" value="<%=rest.getString("name")%>" name="name">
                DESCRIPTION     :   <textarea name="info" style="height:100px;width:50%"> <%=rest.getString("info")%> </textarea>
                USER NAME       :   <input disabled="true" type="text" value="<%=rest.getString("username")%>" name="username">
                PASSWORD        :   <input type="password" value="<%=rest.getString("pass")%>" name="pass">
                SELECT TYPE     :   <input type="radio" name="type" value="User">USER
                                    <input type="radio" name="type" value="Admin">Admin
                                    <input type="hidden" value="<%=rest.getString("username")%>" name="id">
                                    <input type="submit">
                                     
            </pre>
            </form>
                <%
           }
          }   catch(Exception ex)
                {
                    out.print(ex);
           
                }
                %>
    </body>
</html>
