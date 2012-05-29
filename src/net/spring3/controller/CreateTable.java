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
		
		int no = 0;
		try
		{
	//	int courseId = Integer.parseInt(cid); 
		
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		String sql = "SELECT * from lecture WHERE " +
				"cid = 2";
		PreparedStatement pst = c1.prepareStatement(sql);
		//pst.setInt(1, cid);
		ResultSet rs = pst.executeQuery();
		
		while(rs.next())
		{
			no++;
			rs.getString("lid");
		}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println("The no lecture are: "+ no);
		



	}
}