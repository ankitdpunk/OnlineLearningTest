package net.spring3.controller;


import net.spring3.form.*;
import java.sql.*;

import net.spring3.controller.ConnectionManager;
public class LoginValidator {
	
	public String validate(Login log)
	{
		String email = log.getEmail(), emailCheck = "", passwordCheck = "", name ="";
		String password = log.getPassword();
		System.out.println("The email is "+ email);
		int uid = 0;
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		
		try{
	     	   Statement s = c1.createStatement ();
	     	   int count;
	    	  String sql = "SELECT * FROM user where email = ?";
	     	 PreparedStatement pst = c1.prepareStatement(sql);
	     	 pst.setString(1, email);
	     	  System.out.println("The query is "+ pst);
	     	  
	     	  
	     	ResultSet   r = pst.executeQuery();
	     	System.out.println("result set: " + r);
	     	 while(r.next())
	     	 {
	     		System.out.println("inside while");
	     		 name = r.getString("name");
	     		 System.out.println("The name is" + name);
	     		emailCheck = r.getString("email");
	     		System.out.println("The email is" + emailCheck);
	     		 passwordCheck = r.getString("password");
	     		uid = r.getInt("uid");
	     	 }
	     	 if(!email.equals(emailCheck))
	     	 {
	     		 
	     		String val = "User does not exist";
	     		System.out.println(val);
	     		return val;
	     	 }
	     	 if(!password.equals(passwordCheck))
	     	 {
	     		 String val = "Incorrect Password";
	     		System.out.println(val);
	     		 return val;
	     	 }
		}
		catch (Exception e)
        {
			
     	   System.err.println ("Problem executing query");
        }
		String uidS = new Integer(uid).toString();
		return uidS;
		
	}

}
