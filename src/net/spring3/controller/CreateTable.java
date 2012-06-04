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
		String sqlq = "CREATE TABLE lecture ("
                + "lid INT NOT NULL AUTO_INCREMENT,"
                + "uid INT, cid INT,"
                + "url VARCHAR(500), type VARCHAR(20),"
                + "PRIMARY KEY (lid), FOREIGN KEY(uid) REFERENCES user(uid), FOREIGN KEY(cid) REFERENCES course(cid))";


		PreparedStatement pst = c1.prepareStatement(sqlq);
		//pst.setInt(1, cid);
		pst.executeUpdate();
		
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println("The no lecture are: "+ no);
		



	}
}