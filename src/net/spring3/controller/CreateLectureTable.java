package net.spring3.controller;

import java.sql.*;
import net.spring3.controller.*;

public class CreateLectureTable {
	
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
}
