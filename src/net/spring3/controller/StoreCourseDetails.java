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
		 String nooflectures = "1";
		 
		 
		 
        ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		
		try{
	     	//   Statement s = c1.createStatement ();
	     	   int count;
	     	 String sql = "INSERT INTO coursetable VALUES(?,?,?,?,?,?,?)";
	     	 PreparedStatement pst = c1.prepareStatement(sql);
	     	 pst.setString(1, courseTitle);
	     	 pst.setString(2, courseCategoryId);
	     	 pst.setString(3, headline);
	     	 pst.setString(4, keywords);
	     	 pst.setString(5, languageId);
	     	 pst.setString(6, email);
	     	 pst.setString(7, nooflectures);
	     	System.out.println("the string is" + pst);
	     	int numRowsChanged = pst.executeUpdate();
	     	System.out.println("No of rows changed " + numRowsChanged);
		}
		 catch (Exception e)
	        {
	     	   System.err.println ("Problem inserting values into the database");
	        }
	        

	}

}
