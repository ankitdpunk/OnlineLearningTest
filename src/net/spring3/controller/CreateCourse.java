package net.spring3.controller;
import net.spring3.form.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;

public class CreateCourse {
	
	public Course createCourse(String cid)

	{
		Course course = new Course();
		try
		{
		int courseId = Integer.parseInt(cid); 
		
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		String sql = "SELECT * from course WHERE " +
				"cid = ?";
		PreparedStatement pst = c1.prepareStatement(sql);
		pst.setInt(1, courseId);
		ResultSet rs = pst.executeQuery();
		while(rs.next())
		{
			course.setCid(rs.getInt("cid"));
			course.setCourseCategoryId(rs.getString("ccategid"));
			course.setCourseTitle(rs.getString("ctitle"));
			course.setHeadline(rs.getString("headline"));
			course.setKeywords(rs.getString("keywords"));
			course.setLanguageId(rs.getString("lang"));
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return course;
	}

}
