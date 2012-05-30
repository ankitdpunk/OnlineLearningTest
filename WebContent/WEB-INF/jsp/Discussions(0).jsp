<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" 
         
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
<link href="Style/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="Style/index_files/css3menu1/style.css" type="text/css" /></head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <p><br /> <img src="Style/images/logo.png" width="237" height="42" /> </p>
      </div>
      <div style="float:right; margin-right:10px; margin-bottom:10px; margin-top:10px; color:#fff;">Search :
        <input type="text" name="search" />
      </div>
      <div class="menu_nav">

        <ul>
          <li class="active"><a href="Createacourse.html">Create a Course
</a></li>
          <li><a href="browsecourse.html">Browse Course </a></li>
          <li><a href="mycourses.html">My Courses</a></li>
			
          <li><a href="mycourses.html"><core:out value="${login.email}"/><br /></a></li>
          <li><a href="logout.html">Log Out</a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <h2 style="color:#000;"> Course Name <%Course course = new Course();
      course = (Course)session.getAttribute("currentCourse");
      out.println(course.getCourseTitle());
      %> </h2>
	  <div class="rightbox">
       <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="Style/images/like.png" width="60" height="25" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="Style/images/tweet.png" width="75" height="25" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="Style/images/send.jpg" width="70" height="25" /></h4>
      </div>
	  <div class="leftbox" style="margin-bottom:20px;"><img src="Style/images/userpic.gif" width="104" height="87" align="left" />
	   <h4><span class="green style1" style="padding-left:20px; ">BY: </span><strong>Creater Name: <core:out value="${login.email}"/> </strong><br />
	  <span class="green style1" style="padding-left:20px; ">Category:</span><%out.println(course.getCourseCategoryId()); %> <br />
	  <span class="green style1" style="padding-left:20px; ">Tags:</span>
	   </h4>
	  </div>
	<br />	<br />	<br />	<br />
	   <ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a class="pressed" href="#" style="height:15px;line-height:15px;"><span>&nbsp;&nbsp;Create a New Lecture&nbsp;&nbsp;</span></a>
	<ul>
		<li class="subfirst"><a href="uploadForm.html">&nbsp;&nbsp;Create a New Lecture&nbsp;&nbsp;</a></li>
		
	</ul></li>
	<li class="topmenu"><a href="#" style="height:15px;line-height:15px;"><span>&nbsp;&nbsp;Schedule a Live Session &nbsp;&nbsp;</span></a>	</li>
	<li class="topmenu"><a href="#" style="height:15px;line-height:15px;">&nbsp;&nbsp;More&nbsp;&nbsp;</a>
	<ul>
		<li class="subfirst"><a href="#">&nbsp;&nbsp;Schedule a Live Session  3&nbsp;&nbsp;</a></li>
		<li><a href="#">&nbsp;&nbsp;Schedule a Live Session  2&nbsp;&nbsp;</a></li>
		<li><a href="#">&nbsp;&nbsp;Schedule a Live Session  1&nbsp;&nbsp;</a></li>
		<li><a href="#">&nbsp;&nbsp;Item 1 0&nbsp;&nbsp;</a></li>
	</ul>
	</li>
	<li class="topmenu"><a href="#" style="height:15px;line-height:15px;">&nbsp;&nbsp;Resources&nbsp;&nbsp;</a></li>
	<li class="toplast"><a href="#" style="height:15px;line-height:15px;">&nbsp;&nbsp;Publish Now&nbsp;</a></li>
</ul>

   <div class="leftbox" style=" margin-top:20px; width:960px;">
  <ul style="list-style:none;">
  <li style="float:left; margin: 0 10px 0 10px;"> 
    <h4><a href="Lectures (0).html">Lectures (0)</a></h4>
  </li>
  <li style="float:left; margin: 0 10px 0 10px;"> 
    <h4> <a href="Discussions(0).html">Discussions(0</a>)</h4>
  </li>
    <li style="float:left; margin: 0 10px 0 10px;"> 
    <h4> <a href="Live Sessions (0).html">Live Sessions (0)</a></h4>
  </li>
  </ul>
 
    <div class="clr"></div>
    <iframe src="http://docs.google.com/viewer?url=http%3A%2F%2Fresearch.google.com%2Farchive%2Fbigtable-osdi06.pdf&embedded=true" width="800" height="780" style="border: none;"></iframe>
	 <div class="box"> 
	 
	 <%
	
	String cid = (String)session.getAttribute("cid");
	 String fileName = (String)request.getAttribute("fileName");
	
	
	int courseId = Integer.parseInt(cid);
	//courseId = ${c1.getCid()};
	 
	 System.out.println("Inside Discussions jsp  "+ cid);
	 ConnectionManager conn = new ConnectionManager();
	 Connection c1 = conn.getConnection();
	 String sql = "SELECT * from lecture where cid = ?";
	 PreparedStatement pst = c1.prepareStatement(sql);
	 pst.setInt(1, courseId);
	 ResultSet rs = pst.executeQuery();
	 
		while(rs.next())
		{
			String url  = rs.getString("url");
			out.println(url);
			out.write("The download link is <a href="+url+">Download Here</a><br>");
			
		
			
		}
	
	 
		
	 
	//<core:out value="${cor}"/><br />
	//out.write(cor); 

	  %>
	 <form id="form1" name="form1" method="get" action="Lectures.html">
	 
	    <label>
	      <input type="submit" name="Submit" value="Create New Lecture" />
	      </label>
	    </form>
	  </div>
</div>
      <div class="clr"></div>
		
		
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright | All Right Reserved 2012</p>
      <p class="rf">&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>