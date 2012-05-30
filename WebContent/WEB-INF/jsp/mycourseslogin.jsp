<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="net.spring3.form.Course"
         import="java.util.*"
         import="java.lang.*"
         
        
  %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>on line</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="Style/style.css" rel="stylesheet" type="text/css" />
</head>
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
          <li><a href="browsecourse.html">Browe Course </a></li>
          <li><a href="mycourses.html">My Courses</a></li>
          <li><a href="mycourses.html"><core:out value="${login.email}"/></a></li>
          <li><a href="logout.html">Log Out</a></li>
        
        </ul>
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="leftbox" style="width:960px; margin:">
	  <h4><span class="green" style="padding-left:20px; ">My courses </span> Â </h4>
	  <div class="box">
	 <div class="pic"><img src="Style/images/2202.jpg" width="75" height="75" /></div>
     <a href="#">
     
     <%
     ArrayList<Course> clist = new ArrayList<Course>();
     ArrayList<Integer> cidlist = new ArrayList<Integer>();
    
     clist = (ArrayList<Course>)session.getAttribute("courseList");
     Iterator<Course> itr = clist.iterator();
     int nu = 0;
     while(itr.hasNext())
     {	
    	 Course co = new Course();
    	 nu++;
    	 co = (Course)itr.next();

    	int cid= co.getCid();
    	cidlist.add(cid);
     	out.write("The course id is "+ cid);
     	String cnum = new Integer(cid).toString();    	
     	
     	out.write("<div class=\"box\">");
    	out.write("<div class=\"pic\"><img src=\"Style/images/2202.jpg\" width=\"75\" height=\"75\" /></div>");
    	 
    	 out.write("<a href=\"Discussions(0).html?cid="+cid+"\">") ;
    	out.write( "Course title " + co.getCourseTitle() +"</a><br />");
    	//out.write(" Public Â· Not Published Â· Free <br />");
        
    	//out.write("<div class=\"box\">");
    	
    	out.write( "0 Lecture </div>");
    	
    	 
     }
     %>
     
     
	   <div class="clr"></div>	
    </div>
	 <div class="leftbox" style="width:960px; margin:">
	  <h4><span class="green" style="padding-left:20px; ">Courses you are taking </span> Â </h4>
	  <div class="box">
	 <div class="pic"><img src="Style/images/2202.jpg" width="75" height="75" /></div>
     <a href="#">An Entrepreneur's Checklist</a><br />
     byÂ <a href="#">Steve Blank</a><br />
     6 lectures Â· 8917 Subscriber </div>
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