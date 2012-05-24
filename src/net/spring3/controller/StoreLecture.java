package net.spring3.controller;

import java.sql.*;


public class StoreLecture {
	public void storeLecture(String url, String email)
	{
		String nl ="";
	   String tname = "lecturetable"+email;
	   ConnectionManager conn = new ConnectionManager();
	   ConnectionManager conn1 = new ConnectionManager();
		try
		{
			
			Connection c1 = conn.getConnection();
		
			String sql = "SELECT * from coursetable where email = ?";
			PreparedStatement pst = c1.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				 nl = rs.getString("nlectures");
			}
			int lectures = Integer.parseInt(nl);
			
		if(lectures == 1)
		{
			QueryLectureTable create = new QueryLectureTable();
			create.createTable(email);
			
			
		}
			Connection c2 = conn1.getConnection();
			System.out.println(url);
			QueryLectureTable create = new QueryLectureTable();
			create.executeQuery(tname, url);
		
		}
		catch(Exception e)
		{
			System.err.println ("Problem inserting values into the database");
		}
		
	}
	
}
