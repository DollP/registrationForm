/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author RE
 */
public class logincontroller extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException
    {
        PrintWriter out=res.getWriter();
        HttpSession s=req.getSession(true);
        //req.getParameter("username");
        req.getParameter("pass");
        Connection con;
        Statement stmt;
        con=connect.MysqlConnection.ConnectTo();
        try{
            stmt=con.createStatement();
           ResultSet rest= stmt.executeQuery("Select *from Sample where username='"+req.getParameter("username")+"'&&'"+req.getParameter("pass")+"'");
       ArrayList arr1=new ArrayList();
       if(rest!=null)
       {
           while(rest.next())
       {
           ArrayList arr=new ArrayList();
           arr.add(rest.getString("name"));
           arr.add(rest.getString("info"));
           arr.add(rest.getString("username"));
           arr.add(rest.getString("pass"));
           arr.add(rest.getString("type"));
           arr1.add(arr);
       }
           s.setAttribute("userdata",arr1);
           res.sendRedirect("home.jsp");
       }
       else
       {
           out.print("username password is wrong!");
       }
        }
        catch(SQLException e)
        {
        }
    }
            

}
