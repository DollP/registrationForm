/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RE
 */
public class registercontroller extends HttpServlet {
Connection con;
Statement stm;

   @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {
        con=connect.MysqlConnection.ConnectTo();
    try {
        stm=con.createStatement();
       
       String str="insert into sample values('"+req.getParameter("name")+"','"+req.getParameter("info")+"','"+req.getParameter("username")+"','"+req.getParameter("pass")+"','"+req.getParameter("type")+"')";
    int i=stm.executeUpdate(str);
    if(i>10)
    {
        res.sendRedirect("successful.html");
    }
    } catch (SQLException ex) {
        
    }
    }
    
}
