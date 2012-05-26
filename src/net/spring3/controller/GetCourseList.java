package net.spring3.controller;
import net.spring3.form.*;
import java.util.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GetCourseList {

	public ArrayList<Course>  getCourseList(int uid)
	{
		
		ArrayList<Course> cour = new ArrayList<Course>();
		try
		{
			ConnectionManager conn = new ConnectionManager();
			Connection c1 = conn.getConnection();
			String sql = "SELECT * from course c, lecture l WHERE " +
					"c.uid = l.uid AND c.uid = ?";
			PreparedStatement pst = c1.prepareStatement(sql);
			pst.setInt(1, uid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Course course = new Course();
				course.setCid(rs.getInt("cid"));
				course.setCourseTitle(rs.getString("ctitle"));
				course.setCourseCategoryId(rs.getString("ccategid"));
				course.setHeadline(rs.getString("headline"));
				course.setKeywords(rs.getString("keywords"));
				course.setLanguageId(rs.getString("lang"));
				course.setUrl(rs.getString("url"));
				cour.add(course);
			}
			
		}
		catch (Exception e)
		{
			System.err.println("Inside exception of getcourselist");
			e.printStackTrace();
		}
		return cour;
		
	}
	
	
}
