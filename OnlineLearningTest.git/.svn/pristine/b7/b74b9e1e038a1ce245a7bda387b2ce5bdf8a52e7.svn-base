package net.spring3.controller;
import java.sql.*;
public class CreateTable {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		String nl ="";
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		try
		{
			Statement s = c1.createStatement();
			String tname = "lecturetableadmin";
			String url = "F://BmTech//Users//admin";
			
			String sqlq = "INSERT INTO "+ tname+ " (url) VALUES ('"+ url+"')";
			PreparedStatement pstq = c1.prepareStatement(sqlq);
			pstq.executeUpdate(sqlq);
		}
		catch(Exception e)
		{
			System.err.println ("Problem inserting values into the database");
		}

	}

}
