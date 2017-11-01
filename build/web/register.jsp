<%-- 
    Document   : newjsp
    Created on : Sep 12, 2017, 3:26:36 PM
    Author     : RE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register Page</title>
        <style>
            body{
                background-color:gainsboro;
            }
            form{
                background-color: powderblue;
            }
        </style>
    </head>
    <body>
        <form action="registercontroller" method="get">
            <pre>
                NAME            :   <input type="text" name="name">
                DESCRIPTION     :   <textarea name="info" style="height:100px;width:50%"></textarea>
                USER NAME       :   <input type="text" name="username">
                PASSWORD        :   <input type="password" name="pass">
                SELECT TYPE     :   <input type="radio" name="type" value="User">USER
                                    <input type="radio" name="type" value="Admin">Admin
                                    <input type="submit">
            </pre>
            </form>
    </body>
  </html>
