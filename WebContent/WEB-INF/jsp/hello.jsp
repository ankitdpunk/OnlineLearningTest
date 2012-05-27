<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="net.spring3.form.Course"
         import="java.util.*"
         import="java.lang.*"
         import="java.sql.*"
         import="net.spring3.controller.ConnectionManager"
        
  %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>on line</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>
<body>
<core:out value="${coursename.cid}"/><br />
<%
	Course cor = (Course)session.getAttribute("coursename");
	int cid = cor.getCid();
	out.println(cid);
	
	 System.out.println("Inside hello jsp  "+ cid);
	 ConnectionManager conn = new ConnectionManager();
	 Connection c1 = conn.getConnection();
	 String sql = "SELECT * from lecture where cid = ?";
	 PreparedStatement pst = c1.prepareStatement(sql);
	 pst.setInt(1, cid);
	 ResultSet rs = pst.executeQuery();
		while(rs.next())
		{
			String url  = rs.getString("url");
			out.println(url);
			
		}
	 
		
	 
	//<core:out value="${cor}"/><br />
	//out.write(cor); 
%>
</body>
</html>