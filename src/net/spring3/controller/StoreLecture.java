package net.spring3.controller;

import java.sql.*;


public class StoreLecture {
	public void storeLecture(String ctitle, String url, String email, String type, String title, String description)
	{
		 int cid=0, uid=0;
		
	//   String tname = "lecturetable"+email;
	   ConnectionManager conn = new ConnectionManager();
	   ConnectionManager conn1 = new ConnectionManager();
		try
		{
			Connection c1 = conn.getConnection();
			String sql = "SELECT * from user where email = ?";
			PreparedStatement pst = c1.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				uid = rs.getInt("uid");
			}
			
			System.out.println("The uid i get is "+ uid);
			pst.close();
		}
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   
	   try
		{
			
			Connection c1 = conn.getConnection();
		
			String sql = "SELECT * from course c where c.ctitle = ? and c.uid = ?";
			PreparedStatement pst = c1.prepareStatement(sql);
			pst.setString(1, ctitle);
			pst.setInt(2,uid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				cid = rs.getInt("cid");
				 uid = rs.getInt("uid");
			}
			pst.close();
			
		}
		catch(Exception e)
		{
			System.err.println ("Problem getting uid cid values from the database");
		}
		try
		{
			Connection c = conn.getConnection();
			String sql = "INSERT INTO lecture(uid,cid,url,type,title, description) VALUES(?,?,?,?,?,?)";
			PreparedStatement pst = c.prepareStatement(sql);
			pst.setInt(1, uid);
			pst.setInt(2, cid);
			pst.setString(3,url);
			pst.setString(4,type);
			pst.setString(5,title);
			pst.setString(6,description);
			int no=pst.executeUpdate();
			System.out.println("Value inserted into lecture");
		}
		catch(Exception e)
		{
			System.err.println("error in inserting values in lecture ");
		}
	}
	
}
