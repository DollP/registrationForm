<%-- 
    Document   : login
    Created on : Sep 17, 2017, 4:44:12 PM
    Author     : RE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="logincontroller" method="post">
            <input type="text" name="username">
            <input type="password" name="pass">
            <input type="radio" name="type" value="user">User
            <input type="radio" name="type" value="admin">Admin
            <input type="submit">
        </form>
    </body>
</html>
