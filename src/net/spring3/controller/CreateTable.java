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
		
		try
		{
			int no = 0;
			ConnectionManager conn = new ConnectionManager();
			Connection c1 = conn.getConnection();
			String sql = "SELECT c.cid,c.uid,c.ctitle, c.ccategid, c.headline, c.keywords,c.lang, l.lid,l.url from course c, lecture l WHERE " +
					"c.uid = l.uid AND c.uid = ?";
			PreparedStatement pst = c1.prepareStatement(sql);
			pst.setInt(1, uid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				no++;
				System.out.println("The course add is "+ rs.getInt("cid"));
				Course c = new Course();
				System.out.println("wer  "+ rs.getInt("cid"));
				c.setCid(rs.getInt("cid"));
				System.out.println("wer  "+ rs.getString("ctitle"));
				c.setCourseTitle(rs.getString("ctitle"));
				System.out.println("wer  "+ rs.getString("ccategid"));
				c.setCourseCategoryId(rs.getString("ccategid"));
				System.out.println("wer  "+ rs.getString("headline"));				
				c.setHeadline(rs.getString("headline"));
				c.setKeywords(rs.getString("keywords"));
				c.setLanguageId(rs.getString("lang"));
				c.setUrl(rs.getString("url"));
				//cour.add(c);
			}
			
		}
		catch (Exception e)
		{
			System.err.println("Inside exception of getcourselist");
			e.printStackTrace();
		}

		



	}
}