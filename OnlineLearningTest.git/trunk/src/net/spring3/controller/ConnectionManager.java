package net.spring3.controller;

import java.sql.*;
import java.util.*;


public class ConnectionManager {

   static Connection conn;
   static String url;
         
   public static Connection getConnection()
   {
	   Connection conn = null;

       try
       {
    	   System.out.println("Inside Connection Manager");
           String userName = "root";
           String password = "root";
           String url = "jdbc:mysql://localhost:3306/onlinelearning";
           
           Class.forName ("com.mysql.jdbc.Driver").newInstance();
           conn = DriverManager.getConnection (url, userName, password);
           System.out.println ("Database connection established");
           
           
    
       }
       catch (Exception e)
       {
           System.err.println ("Cannot connect to database server");
       }
   return conn;
   }
}