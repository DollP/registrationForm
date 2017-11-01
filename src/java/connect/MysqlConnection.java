/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author RE
 */
public class MysqlConnection {
    public static  Connection conn=null;

    /**
     *
     * @return
     */
    public static Connection  ConnectTo()
    {
    
           
           try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");
       // }
       // catch(ClassNotFoundException e){
           // System.err.println(e);
       // }
        //try{
           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etude","root","root");
          System.out.println("connection established.................");
           }
        catch(Exception e)
        {
        e.printStackTrace();
        }
       return conn;
    }
    
                
            }
    
    

