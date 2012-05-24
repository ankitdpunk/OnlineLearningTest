package net.spring3.controller;

import java.sql.*;

import net.spring3.controller.*;

public class QueryLectureTable {
	
	public  String createTable(String email)
	{
		String tablename ="";

	ConnectionManager conn = new ConnectionManager();
	Connection c1 = conn.getConnection();
	try
	{
		
		Statement s = c1.createStatement();
		tablename = "lecturetable" + email;
		s.executeUpdate( "CREATE TABLE "+ tablename+ "("
	               + "id INT UNSIGNED NOT NULL AUTO_INCREMENT,"
	               + "PRIMARY KEY (id),"
	               + "url VARCHAR(250))");
				
	//	PreparedStatement pst = c1.prepareStatement(sql);
	//	pst.set
		System.out.println("Lecture table for " +email+ " created successfullly");
	}
	catch(Exception e)
	{
		System.err.println ("Problem inserting values into the database");
	}
	return tablename;
   
}
	public void executeQuery(String tname, String url )
	   {
		try
		{
			System.err.println("Inside lecturetable execute quey" );
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		String sqlq = "INSERT INTO "+ tname+ " (url) VALUES ('"+ url+"')";
		PreparedStatement pstq = c1.prepareStatement(sqlq);
		pstq.executeUpdate();   
	   }
	 
	catch(Exception e)
	{
		System.err.println("Cannot insert query into lecturetable");
	}
		
		
	   }
		
}
