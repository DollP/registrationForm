<%-- 
    Document   : home
    Created on : Sep 17, 2017, 5:41:51 PM
    Author     : RE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <style>
            header{
                height:100px;
                  width: 100%;
                background-color:background;
            }
            main{
                height:500px;
                
            }
            main iframe{
                height:500px;
                width: 100%;
                background-color:lavenderblush ;
            }
            footer{
                height:100px;
                  width: 100%;
                background-color: background;
            }
            table td{
                background-color: seagreen;
                border-radius: 10px;
            }
            table td:hover{
                background-color: slategray;
                border-radius: 10px;
            }
            table td a{
                text-decoration: none;
                color:white;
                font-size: 25px;
            }
            iframe{
                background-image: inherit;
            }
        </style>
    </head>
    <body>
        <header>
            <span><img src="gn.png" height="100" width="100" alt="logo" style="float:left;"></span>
            <span style="font-size: 25px; font-weight: bold;font-family: italic">Its my sample Project</span>
            <table>
                        <tr>
                            <td><a href="home.jsp" target="ifr">Home</a> </td>
                            <td><a href="about.html" target="ifr">About Us</a></td>
                            <td><a href="login.jsp" target="ifr">Login</a></td>
                        <td><a href="register.jsp" target="ifr">Register</a></td></tr>
            </table>
        </header>
        <main>
            <iframe name="ifr" src="img1.jpg"></iframe>
        </main>
        <footer></footer>
    </body>
</html>
