package net.spring3.controller;
import java.sql.*;
import java.util.ArrayList;

import net.spring3.form.Course;
public class CreateTable {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	
	
		
	
	/*	try
		{
	//	int courseId = Integer.parseInt(cid); 
		
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
/*	String sqlq = "CREATE TABLE lecture ("
                + "lid INT NOT NULL AUTO_INCREMENT,"
                + "uid INT, cid INT,"
                + "url VARCHAR(500), type VARCHAR(20), title VARCHAR(100), description LONGTEXT,"
                + "PRIMARY KEY (lid), FOREIGN KEY(uid) REFERENCES user(uid), FOREIGN KEY(cid) REFERENCES course(cid))"; */ 
	/*	String sqlq = "CREATE TABLE course ("
                + "cid INT NOT NULL AUTO_INCREMENT,"
                + "uid INT,"
                + "ctitle VARCHAR(250), ccategid VARCHAR(250), headline VARCHAR(250),"
                + "keywords VARCHAR(250), lang VARCHAR(250), price INT,"
                + "PRIMARY KEY (cid), FOREIGN KEY(uid) REFERENCES user(uid))"; */
	/*	String sqlq = "CREATE TABLE studentrolled ("
                + "uid INT,"
                + "cid INT)"; */
	/*	String sqlq = "CREATE TABLE userdescription ("
                + "uid INT,"
                + "designation VARCHAR(250), fname VARCHAR(50), lname VARCHAR(50),"
                + "phead LONGTEXT, sbio LONGTEXT, "
                + "gplus VARCHAR(100), twitter VARCHAR (100), fb VARCHAR(100))";
                
		PreparedStatement pst = c1.prepareStatement(sqlq);
		//pst.setInt(1, cid);
		pst.executeUpdate();
		
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		*/
		int cid = 0, no = 0;
		try
		{
			
			ConnectionManager conn = new ConnectionManager();
			Connection c1 = conn.getConnection();
			String sql = "SELECT * from course c WHERE " +
					" c.uid = ? ";
			PreparedStatement pst = c1.prepareStatement(sql);
			pst.setInt(1, 1);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				no++;
				
				 cid = (rs.getInt("cid"));
				 System.out.println("The cid is "+ cid);
			}
			
		}
		catch (Exception e)
		{
			System.err.println("Inside exception of getcourselist");
			e.printStackTrace();
		}
		System.out.println("The cid is "+ cid);



	}
}