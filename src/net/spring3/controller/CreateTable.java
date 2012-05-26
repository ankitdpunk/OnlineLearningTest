package net.spring3.controller;
import java.sql.*;
import java.util.ArrayList;

import net.spring3.form.Course;
public class CreateTable {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	String	email = "admin";
	String ctitle = "ajax";
	String url = "dadas";
		int uid = 1;
		
		Course course = new Course();
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
				System.out.println("Inside while");
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
		



	}
}