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
<link rel="stylesheet" href="Style/index_files/css3menu1/style.css" type="text/css" />

<!-- Start of script for jwplayer -->
		<link rel="stylesheet" href="jplayer/css/not.the.skin.css">
		<link rel="stylesheet" href="jplayer/circle.skin/circle.player.css">
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
		<script type="text/javascript" src="jplayer/js/jquery.transform.js"></script>
		<script type="text/javascript" src="jplayer/js/jquery.grab.js"></script>
		<script type="text/javascript" src="jplayer/js/jquery.jplayer.js"></script>
		<script type="text/javascript" src="jplayer/js/mod.csstransforms.min.js"></script>
		<script type="text/javascript" src="jplayer/js/circle.player.js"></script>
		<!--<script type="text/javascript" src="https://getfirebug.com/firebug-lite.js"></script>-->

		<script type="text/javascript">
		$(document).ready(function(){
 $("#jquery_jplayer_1").jPlayer({
  ready: function () {
   $(this).jPlayer("setMedia", {
    mp3: "Style/Sajni.mp3"
   });
  },
  swfPath: "/js",
  supplied: "mp3"
 });

 

			var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",
			{
				mp3: "Style/Sajni.mp3"
			}, {
				cssSelectorAncestor: "#cp_container_1"
			});

			// This code creates a 2nd instance. Delete if not required.

			
		});
		</script>
	<!--  End of jplayer audio -->
	
	<!-- Start of flex paper -->	
	
	<style type="text/css" media="screen"> 
			html, body	{ height:100%; }
			body { margin:0; padding:0; overflow:auto; }   
			#flashContent { display:none; }
        </style> 
        
        
		<script type="text/javascript" src="FlexPaper/js/flexpaper_flash.js"></script>
	<!-- End of flex paper -->
</head>
		
<body>



<div class="main">
<div id="jquery_jplayer_1" class="cp-jplayer"></div>
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
	<!-- END OF THE Video  PLAYER EMBEDDING -->
	
	<!-- Sound manager embedding starting -->
	
	
	<div class="prototype-wrapper"> <!-- A wrapper to emulate use in a webpage and center align -->


			<!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->

			<div id="cp_container_1" class="cp-container">
				<div class="cp-buffer-holder"> <!-- .cp-gt50 only needed when buffer is > than 50% -->
					<div class="cp-buffer-1"></div>
					<div class="cp-buffer-2"></div>
				</div>
				<div class="cp-progress-holder"> <!-- .cp-gt50 only needed when progress is > than 50% -->
					<div class="cp-progress-1"></div>
					<div class="cp-progress-2"></div>
				</div>
				<div class="cp-circle-control"></div>
				<ul class="cp-controls">
					<li><a href="#" class="cp-play" tabindex="1">play</a></li>
					<li><a href="#" class="cp-pause" style="display:none;" tabindex="1">pause</a></li> <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
				</ul>
			</div>

			

			

		</div>
	
	
	
	
	
	
	<!--  Sound manager embed finish -->
	
	<!-- Start of flex paper -->
	<div style="position:absolute;left:10px;top:10px;">
	        <a id="viewerPlaceHolder" style="width:680px;height:480px;display:block"></a>
	        
	        <script type="text/javascript"> 
				var fp = new FlexPaperViewer(	
						 'Flexpaper/FlexPaperViewer',
						 'viewerPlaceHolder', { config : {
						 SwfFile : escape('FlexPaper/B.swf'),
						 Scale : 0.6, 
						 ZoomTransition : 'easeOut',
						 ZoomTime : 0.5,
						 ZoomInterval : 0.2,
						 FitPageOnLoad : true,
						 FitWidthOnLoad : false,
						 FullScreenAsMaxWindow : false,
						 ProgressiveLoading : false,
						 MinZoomSize : 0.2,
						 MaxZoomSize : 5,
						 SearchMatchAll : false,
						 InitViewMode : 'Portrait',
						 PrintPaperAsBitmap : false,
						 
						 ViewModeToolsVisible : true,
						 ZoomToolsVisible : true,
						 NavToolsVisible : true,
						 CursorToolsVisible : true,
						 SearchToolsVisible : true,
  						
  						 localeChain: 'en_US'
						 }});
	        </script>
        </div>
	
	
	
		
	<!-- End of flex paper -->

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