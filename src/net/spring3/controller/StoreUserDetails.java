package net.spring3.controller;
import net.spring3.form.*;
import java.sql.Connection;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.Statement;
import net.spring3.controller.ConnectionManager;
public class StoreUserDetails {
	
	public void storeInfo(Tutor tutor)
	{
		String email = tutor.getEmail();
		String name = tutor.getName();
		String password = tutor.getPassword();
		System.out.println("the email i get is+ " + email);
		
		
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		
		try{
	     	   Statement s = c1.createStatement ();
	     	   int count;
	     	  String sql = "INSERT INTO user VALUES(?,?,?)";
	     	 PreparedStatement pst = c1.prepareStatement(sql);
	     	 pst.setString(1, email);
	     	 pst.setString(2, name);
	     	 pst.setString(3, password);
	     	int numRowsChanged = pst.executeUpdate();
	     	System.out.println("No of rows changed " + numRowsChanged);
		}
		 catch (Exception e)
	        {
	     	   System.err.println ("Problem inserting values into the database");
	        }
	        
	     	   
		
		
	}
	

}
