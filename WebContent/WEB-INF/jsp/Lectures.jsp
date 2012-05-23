<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
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
        <h1><a href="index.html"><span>On line</span></a> Eduction</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="#">Create a Course
</a></li>
          <li><a href="#">Browe Course </a></li>
          <li><a href="#">My Courses</a></li>
          <li><a href="#"><core:out value="${login.email}"/><br/> <br />
          </a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="hbg">
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <h2 style="color:#000;"> Course Name  <core:out value="${course.courseTitle}"/><br/> </h2>
    
	  <div class="rightbox">
       <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><img src="Style/images/like.png" width="60" height="25" border="0" /></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><img src="Style/images/tweet.png" width="75" height="25" border="0" /></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><img src="Style/images/send.jpg" width="70" height="25" border="0" /></a></h4>
      </div>
	  <div class="leftbox" style="margin-bottom:20px;"><img src="Style/images/userpic.gif" width="104" height="87" align="left" />
	   <h4><span class="green style1" style="padding-left:20px; ">BY </span>  <strong>Creater Name <core:out value="${login.email}"/><br/>  </strong><br />
	  <span class="green style1" style="padding-left:20px; ">Category:</span> Art <core:out value="${course.courseCategoryId}"/><br/><br />
	  <span class="green style1" style="padding-left:20px; ">Tags:</span>
	   </h4>
	  </div>
	<br />	<br />	<br />	<br />
	   <ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a class="pressed" href="#" style="height:15px;line-height:15px;"><span>&nbsp;&nbsp;Create a New Lecture&nbsp;&nbsp;</span></a>
	<ul>
		<li class="subfirst"><a href="#">&nbsp;&nbsp;Create a New Lecture 3&nbsp;&nbsp;</a></li>
		<li><a href="#">&nbsp;&nbsp;Create a New Lecture 2&nbsp;&nbsp;</a></li>
		<li><a href="#">&nbsp;&nbsp;Create a New Lecture 1&nbsp;&nbsp;</a></li>
		<li><a href="#">&nbsp;&nbsp;Create a New Lecture 0&nbsp;&nbsp;</a></li>
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
    <h4> <a href="Discussions(0).html">Discussions(0)</a></h4>
  </li>
    <li style="float:left; margin: 0 10px 0 10px;"> 
    <h4> <a href="Live Sessions (0).html">Live Sessions (0)</a></h4>
  </li>
  </ul>
    <div class="clr"></div>
	<div class="box">
	  <p>Hi there!</p>
	  <p>Thanks for creating a course on Udemy! We're thrilled to see what you come up with. On Udemy, you can add lectures in the form of videos, PowerPoints or articles. Or, you can also host live classes with your students.</p>
	  <ul style=" list-style:none;">
	    <li>
	      <h2>Create Lectures</h2>
	      <div style="margin-left:30px;">
	        <ol id="add-content">
	          <li>
	            <h4><a href="uploadForm.html">Upload a file</a></h4>
	            <p>Videos are a great way to engage your audience with visual and auditory learning.</p>
	          </li>
	          <li>
	            <h4><a href="#">Upload a Presentation</a></h4>
	            <p>Have a PowerPoint presentation that you want to use as a lecture? Click here to upload it.</p>
	          </li>
	          <li>
	            <h4> <a href="#">Upload a Document</a></h4>
	            <p>You can upload documents like e-book, work sheets etc in pdf format here.</p>
	          </li>
	          <li>
	            <h4><a href="#">Create a Presentation/Video Mashup</a></h4>
	            <p>This is a special feature on Udemy where you can sync videos and PowerPoint presentations. Now you don't have to choose between the slides or the presenter; show them both!</p>
	          </li>
	          <li>
	            <h4><a href="#">Write an Article</a></h4>
	            <p>Write an article so your students can learn by reading.</p>
	          </li>
	          <li>
	            <h4><a href="#">Import Content from Other Sites</a></h4>
	            <p>Do you already have content on YouTube, SlideShare, Vimeo... ? No problem! Just import it into Udemy.</p>
	          </li>
	          <li>
	            <h4><a href="#">Upload an Audio Lecture</a></h4>
	            <p> Only .mp3 files for now</p>
	          </li>
	          <li>
	            <h4><a href="uploadForm.html">Upload any File</a></h4>
	            <p>Use this tool to upload all other file types to be downloaded by users.</p>
	          </li>
	          </ol>
	        </div>
	      </li>
	    <li>
	      <h2>Live Sessions</h2>
	        <div style="margin-left:30px;">
	        <ol>
	          <li>
	            <h4><a href="#">Schedule a live session</a></h4>
	            <p>Use our powerful <strong>Udemy Live™</strong> tool to hold virtual classes, Q&amp;A sessions and meetings with your subscribers.</p>
	          </li>
	          </ol>
	        <ol>
	          <li>Share PowerPoint or PDF presentations</li>
	          <li>Draw diagrams and write notes on the virtual whiteboard</li>
	          <li>Use live video and audio to talk with others</li>
	          <li>Talk with others via our chatroo</li>
	          </ol>
	        </div>
	      </li>
	    </ul>
	  <br />
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