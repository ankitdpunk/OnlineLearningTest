<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
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
          <li><a href="#"><core:out value="${login.email}"/></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="leftbox" style="width:960px; margin:">
	  <h4><span class="green" style="padding-left:20px; ">My courses </span>  </h4>
	  <div class="box">
	 <div class="pic"><img src="Style/images/2202.jpg" width="75" height="75" /></div>
     <a href="#">
     Courses name create by you </a><br />
     Public · Not Published · Free <br />
     0 Lecture </div>
	  <div class="box">
	 <div class="pic"><img src="Style/images/2202.jpg" width="75" height="75" /></div>
     <a href="#">
     Courses name create by you </a><br />
     Public · Not Published · Free <br />
     0 Lecture </div>
	   <div class="box">
	 <div class="pic"><img src="Style/images/2202.jpg" width="75" height="75" /></div>
     <a href="#">
     Courses name create by you </a><br />
     Public · Not Published · Free <br />
     0 Lecture </div>
	   <div class="clr"></div>	
    </div>
	 <div class="leftbox" style="width:960px; margin:">
	  <h4><span class="green" style="padding-left:20px; ">Courses you are taking </span>  </h4>
	  <div class="box">
	 <div class="pic"><img src="Style/images/2202.jpg" width="75" height="75" /></div>
     <a href="#">An Entrepreneur's Checklist</a><br />
     by <a href="#">Steve Blank</a><br />
     6 lectures · 8917 Subscriber </div>
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