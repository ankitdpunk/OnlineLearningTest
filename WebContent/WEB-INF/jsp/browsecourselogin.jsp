<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>on line</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="Style/style.css" rel="stylesheet" type="text/css" />

</head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script type="text/javascript" src="Style/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="Style/fancybox/jquery.fancybox-1.3.4.css" media="screen" />

	<script type="text/javascript">
		$(document).ready(function() {
			$("a#example3").fancybox({
				'transitionIn'	: 'none',
				'transitionOut'	: 'none'	
			});

			$("#various3").fancybox({
				'width'				: '58%',
				'height'			: '58%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});
		});
	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("a#example4").fancybox({
				'transitionIn'	: 'none',
				'transitionOut'	: 'none'	
			});

			$("#various4").fancybox({
				'width'				: '58%',
				'height'			: '58%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});
		});
	</script>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <p> <br /><img src="Style/images/logo.png" width="237" height="42" /> </p>
      </div>
      <div style="float:right; margin-right:10px; margin-bottom:10px; margin-top:10px; color:#fff;">Search :
        <input type="text" name="search" />
      </div>
      <div class="menu_nav">

        <ul>
          <li class="active"><a href="Createacourse.html">Create a Course</a></li>
          <li><a href="browsecourse.html">Browse Course </a></li>
          <li><a href="mycourses.html"><core:out value="${login.email}"/><br /> </a></li>
          <li><a href="logout.html">Log Out</a></li>
          
          
          </a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="hbg">
        <div class="info fl">
          <h3>Create a Course </h3>
          <h2 >And Join Thousands of Instructors to...</h2>
          <ul style="list-style:none;">
            <li>BUILD YOUR BRAND</li>
            <li>SHARE YOUR KNOWLEDGE</li>
            <li>MAKE MONEY ONLINE</li>
          </ul>
          <h2><a href="Createacourse.html">Get Started</a></h2>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>New and Noteworthy Course</span></h2>
          <div class="clr"></div>
          <p class="post-data"><img src="pics/Success-Failure.jpg" alt="" width="613" height="217" align="left" /></p>
          <h5>AJAX Development</h5>
          <p class="spec">Mark Lassoff
11 Subscribers , 41 Lectures<br />
Price: 49</p>
</div>
        <div class="article">
          <div class="clr"></div>
          <p class="post-data"><img src="pics/Success-Failure.jpg" alt="" width="613" height="217" align="left" /></p>
          <h5>AJAX Development</h5>
          <p class="spec">Mark Lassoff
            11 Subscribers , 41 Lectures<br />
          Price: 49</p>
        </div>
        <div class="article">
          <div class="clr"></div>
          <p class="post-data"><img src="pics/Success-Failure.jpg" alt="" width="613" height="217" align="left" /></p>
          <h5>AJAX Development</h5>
          <p class="spec">Mark Lassoff
            11 Subscribers , 41 Lectures<br />
            Price: 49</p>
        </div>
        <div class="article">
          <div class="clr"></div>
          <p class="post-data"><img src="pics/Success-Failure.jpg" alt="" width="613" height="217" align="left" /></p>
          <h5>AJAX Development</h5>
          <p class="spec">Mark Lassoff
            11 Subscribers , 41 Lectures<br />
          Price: $49</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget"></div>
        <div class="gadget">
          <h2 class="star"><span>Category</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li></li>
            <li><a href="#">Technology Courses</a></li>
            <li><a href="#">Business Courses</a></li>
            <li><a href="#"> Design Courses</a></li>
            <li><a href="#">Social Sciences Courses</a>
             </li>
            <li><a href="#">Math and Science Courses</a></li>
            <li><a href="#"> Humanities Courses</a></li>
           <li> <a href="#">Arts Courses</a></li>
  			<li><a href="#">Lifestyle Courses</a></li>
  			<li> <a href="#">Crafts and Hobbies Courses</a></li>
    		<li><a href="#">Health and Fitness Courses</a></li>
			<li><a href="#">Education Courses</a></li>
			<li> <a href="#">Music Courses</a></li>
    		<li><a href="#">Languages Courses</a></li>
    		<li><a href="#">Sports Courses</a></li>
    		<li><a href="#">Games Courses</a></li>
    		<li><a href="#">	Other Courses</a></li>
          </ul>
         
        </div>
        <div class="gadget">
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright | All Right Reserved 2012</p>
      
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>