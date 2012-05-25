package net.spring3.controller;
import net.spring3.form.*;
import java.sql.*;

public class StoreCourseDetails {
	public void storeCourse(Course course, Login login)
	{
		 String courseTitle = course.getCourseTitle() ;
		 String courseCategoryId = course.getCourseCategoryId();
		 String headline = course.getHeadline() ;
		 String keywords = course.getKeywords();
		 String languageId = course.getLanguageId();
		 String email = login.getEmail();
		// String nooflectures = "1";
		 int uid = 0;
		 
		 
		 
        
		try{
			ConnectionManager conn = new ConnectionManager();
			Connection c1 = conn.getConnection();
			String sql = "SELECT * FROM user WHERE email = ?";
			PreparedStatement pst = c1.prepareStatement(sql);
	     	pst.setString(1, email);
	     	ResultSet rs = pst.executeQuery();
	     	while(rs.next())
	     	{
	     		uid  = rs.getInt("uid");
	     	}
	     	System.out.println("Inside get uid of course entry ");
	     	pst.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		try{
			ConnectionManager conn = new ConnectionManager();
			Connection c1 = conn.getConnection();
	     	//   Statement s = c1.createStatement ();
	     	   int count;
	     	 String sql = "INSERT INTO course(uid,ctitle,ccategid,headline,keywords,lang) VALUES(?,?,?,?,?,?)";
	     	 PreparedStatement pst = c1.prepareStatement(sql);
	     	 pst.setInt(1, uid);
	     	 pst.setString(2, courseTitle);
	     	 pst.setString(3, courseCategoryId);
	     	 pst.setString(4, headline);
	     	 pst.setString(5, keywords);
	     	 pst.setString(6, languageId);
	     	 
	     	 System.out.println("the string is" + pst);
	     	int numRowsChanged = pst.executeUpdate();
		}
		 catch (Exception e)
	        {
	     	   System.err.println ("Problem inserting values into the course database");
	        }
	        

	}

}
