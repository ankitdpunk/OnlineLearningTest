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
<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet">
<script src="http://vjs.zencdn.net/c/video.js"></script>
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
        <form action="browsecourse.html">
        <input type="text" name="search"  />       
        </form>  
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
<!-- START OF THE PLAYER EMBEDDING TO COPY-PASTE -->

	<div id="mediaplayer">JW Player goes here</div>
	
	<script type="text/javascript" src="jwplayer/jwplayer.js"></script>
	<script type="text/javascript">
		jwplayer("mediaplayer").setup({
			flashplayer: "jwplayer/player.swf",
			file: "jwplayer/Woofer.flv",
			image: "jwplayer/preview.jpg"
		});
	</script>
	<!-- END OF THE PLAYER EMBEDDING -->
	
	<!-- Sound manager embedding starting -->
	
	<p>This is audio</p>
	<script type="text/javascript" src="soundmanager/script/soundmanager2.js"></script>

<!-- configure it for your use -->
<script type="text/javascript">



<!-- required -->
<link rel="stylesheet" type="text/css" href="soundmanager/demo/360-player/360player.css" />
<link rel="stylesheet" type="text/css" href="soundmanager/demo/360-player/360player-visualization.css" />

<!-- special IE-only canvas fix -->
<!--[if IE]><script type="text/javascript" src="script/excanvas.js"></script><![endif]-->

<!-- Apache-licensed animation library -->
<script type="text/javascript" src="soundmanager/demo/360-player/script/berniecode-animator.js"></script>

<!-- the core stuff -->
<script type="text/javascript" src="soundmanager/demo/360-player/script/soundmanager2.js"></script>
<script type="text/javascript" src="soundmanager/demo/360-player/script/360player.js"></script>

<script type="text/javascript">

soundManager.url = 'soundmanager/swf/'; // path to directory containing SM2 SWF

soundManager.useFastPolling = true; // increased JS callback frequency, combined with useHighPerformance = true

threeSixtyPlayer.config.scaleFont = (navigator.userAgent.match(/msie/i)?false:true);
threeSixtyPlayer.config.showHMSTime = true;

// enable some spectrum stuffs

threeSixtyPlayer.config.useWaveformData = true;
threeSixtyPlayer.config.useEQData = true;

// enable this in SM2 as well, as needed

if (threeSixtyPlayer.config.useWaveformData) {
  soundManager.flash9Options.useWaveformData = true;
}
if (threeSixtyPlayer.config.useEQData) {
  soundManager.flash9Options.useEQData = true;
}
if (threeSixtyPlayer.config.usePeakData) {
  soundManager.flash9Options.usePeakData = true;
}

if (threeSixtyPlayer.config.useWaveformData || threeSixtyPlayer.flash9Options.useEQData || threeSixtyPlayer.flash9Options.usePeakData) {
  // even if HTML5 supports MP3, prefer flash so the visualization features can be used.
  soundManager.preferFlash = true;
}

// favicon is expensive CPU-wise, but can be used.
if (window.location.href.match(/hifi/i)) {
  threeSixtyPlayer.config.useFavIcon = true;
}

if (window.location.href.match(/html5/i)) {
  // for testing IE 9, etc.
  soundManager.useHTML5Audio = true;
}

</script>	<!--  Sound manager embed finish -->

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