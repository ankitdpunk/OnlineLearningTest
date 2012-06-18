package net.spring3.controller;
import java.sql.*;

public class SignUpValidator {
	
	public String validate(String email, String name, String password)
	{
		ConnectionManager conn = new ConnectionManager();
		Connection c1 = conn.getConnection();
		String message="";
		try{
	     	  
	     	  
	    	 String sql = "SELECT * FROM user where email = ?";
	     	 PreparedStatement pst = c1.prepareStatement(sql);
	     	 pst.setString(1, email);
	     	  System.out.println("The query is "+ pst);
	     	 ResultSet   r = pst.executeQuery();
		     	System.out.println("result set: " + r);
		     	int no=0;
		     	 while(r.next())
		     	 {
		     		no++;
		     	 }
		     if(no!=0)
		     {
		    	 message = "User Already Exists !";
		     }
		     else if(name.equals(""))
		     {
		    	 message = "Name cant be empty !";
		     }
		     else if(password.equals(""))
		     {
		    	 message = "Password cant be empty !";
		     }
		     
		     if(message.equals(""))
		     {
		    	ConnectionManager conn1 = new ConnectionManager();
		 		Connection c2 = conn1.getConnection();
		 		
		 		try{	 	     	  
		 	         sql = "SELECT * FROM user ";
		 	     	 PreparedStatement pst2 = c2.prepareStatement(sql);
		 	     	 //pst2.setString(1, email);
		 	     	  System.out.println("The query is "+ pst);
		 	     	 ResultSet   rs= pst2.executeQuery();
		 		     	System.out.println("result set: " + rs);
		 		     	 no=0;
		 		     	 while(rs.next())
		 		     	 {
		 		     		no++;
		 		     	 }
		 			}
		 		catch(Exception e)
		 		{
		 			e.printStackTrace();
		 		}
		 		no++;
		 		message= new Integer(no).toString();
		     
		     }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	     return message;	  
	

}
}
