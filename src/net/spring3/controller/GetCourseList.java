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
			int no = 0;
			ConnectionManager conn = new ConnectionManager();
			Connection c1 = conn.getConnection();
			String sql = "SELECT c.cid,c.uid,ctitle, ccategid, headline, keywords,lang, lid,url from course c, lecture l WHERE " +
					"c.uid = l.uid AND c.uid = ?";
			PreparedStatement pst = c1.prepareStatement(sql);
			pst.setInt(1, uid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				no++;
				System.out.println("The course add is "+ rs.getInt("cid"));
				Course c = new Course();
				c.setCid(rs.getInt("cid"));
				c.setCourseTitle(rs.getString("ctitle"));
				c.setCourseCategoryId(rs.getString("ccategid"));
				c.setHeadline(rs.getString("headline"));
				c.setKeywords(rs.getString("keywords"));
				c.setLanguageId(rs.getString("lang"));
				c.setUrl(rs.getString("url"));
				cour.add(c);
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
