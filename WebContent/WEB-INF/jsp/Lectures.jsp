<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" 
         
         pageEncoding="windows-1256"
         import="net.spring3.form.Course"
         import="net.spring3.form.Login"
         import="java.util.*"
         import="java.lang.*"
         import="java.sql.*"
         import="net.spring3.controller.ConnectionManager"
        
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<script type='text/javascript'>
(function (d, t) {
  var bh = d.createElement(t), s = d.getElementsByTagName(t)[0];
  bh.type = 'text/javascript';
  bh.src = '//www.bugherd.com/sidebarv2.js?apikey=ebdb311c-2520-4a7a-baa8-3a3d1f8d399a';
  s.parentNode.insertBefore(bh, s);
  })(document, 'script');
</script>

<title>on line</title>
<link rel="icon" 
      type="image/png" 
      href="Style/images/logo copy.png" />
<link rel="icon" 
      type="image/png" 
      href="Style/images/logo copy.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet">
<script src="http://vjs.zencdn.net/c/video.js"></script>
<link href="Style/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="Style/index_files/css3menu1/style.css" type="text/css" />
<script type="text/javascript" src="Style/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function () {	
	
	$('#nav li').hover(
		function () {
			//show its submenu
			$('ul', this).slideDown(100);

		}, 
		function () {
			//hide its submenu
			$('ul', this).slideUp(100);			
		}
	);
	
});
	</script>
    <style type="text/css">
	
	
	/* remove the list style */
	#nav {
		margin:0; 
		padding:0; 
		list-style:none;
	}	
	
		/* make the LI display inline */
		/* it's position relative so that position absolute */
		/* can be used in submenu */
		#nav li {
			float:left; 
			display:block; 
			width:150px; 
			
			position:relative;
			z-index:500; 
			margin:0px 0 0px 0;;
		}
		
		/* this is the parent menu */
		#nav li a {
			display:block; 
			padding:8px 5px 0 5px; 
			  
			height:16px; 
			text-decoration:none; 
			color:#fff; 
			text-align:center; 
			color:#333;
		}

		#nav li a:hover {
			color:#333;
		}
	
		/* you can make a different style for default selected value */
		#nav a.selected {
			color:#f00;
		}
	
		/* submenu, it's hidden by default */
		#nav ul {
			position:absolute; 
			left:0; 
			display:none; 
			margin:0 0 0 -1px; 
			padding:0; 
			list-style:none;
			background:#ccc;
		}
		
		#nav ul li {
			width:100px; 
			float:left; 
			border-top:1px solid #fff;
		}
		
		/* display block will make the link fill the whole area of LI */
		#nav ul a {
			display:block;  
			height:15px;
			padding: 8px 5px; 
			color:#666;
		}
		
		#nav ul a:hover {
			text-decoration:underline;	
		}

		/* fix ie6 small issue */
		/* we should always avoid using hack like this */
		/* should put it into separate file : ) */
		*html #nav ul {
			margin:0 0 0 -2px;
		}

	</style>

<!-- Start of script for jplayer -->
		
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
  <div class="header">
    <div class="header_resize">
      <div class="logo"> <img src="Style/images/logo copy.png" width="84" height="92" /> <img src="Style/images/text.png" width="150" height="40" / style="margin-bottom:25px"></div>
      <div class="menu_nav">
        <div class="search">
          <div class="searchtext">
            <input name="input8" type="text" / style="width:200px; height:22px;" class="textfield"/>
          </div>
          <div class="se"><img src="Style/images/search1.png" alt="" width="25" height="25" /></div>
        </div>
        <!--<div id="menu">
    <ul class="menu" >
 <li><a href="#" class="parent"><span>Ankita Singh</span></a>
     <div><ul>
  <li><a href="#" class="parent"><span>My course</span></a>
 <li><a href="#"><span>Mu account</span></a></li>
                
            </ul></div>
        </li>
        <li><a href="browe.html">Browse Course </a>
           
        </li>
        <li><a href="Sign In.html">Login</a></li>
        <li class="last"><a href="Sign up.html" >Sign Up</a></li>
    </ul>
    <div id="copyright" style="display:hide">Copyright &copy; 2012 <a href="http://apycom.com/"></a></div>
</div>-->


<%
Login login= new Login();
login = (Login)session.getAttribute("currentLogin");
if(session.getAttribute("currentLogin") == null)
{
	

%>
<div class="top_menu"><a href='Login.html' >Log in</a></div>
<div class="top_menu"><a href='signup1.html' >Sign up</a></div>
<div class="top_menu"><a href='browsecourse.html' >Browse course</a></div>
</div>
<%}
else
{ %>
<div class="top_menu"><a href="logout.html">Log Out</a></div>
<div class="top_menu"><a href='Createacourse.html' >CreateCourse</a></div>
<div class="top_menu"><a href='browsecourse.html' >BrowseCourse</a></div>
<ul id="nav">
	<li><a href="#"><core:out value="${login.email}"/></a>
	<ul>
		<li><a href="mycourses.html">Courses</a></li>
		<li><a href="#">Account</a></li>	
	</ul>			
		<div class="clear"></div>
	</li>	
</ul>
	


<%} %>


      </div>
      
    </div>
  </div>
  
    
    <%
	String placeHolder = "1";
	String mediaPlayer = "mediaPlayer";
	String jqueryPlayer = "jqueryPlayer";
	String container  ="container";
	String cid = (String)session.getAttribute("cid");
	// String fileName = (String)request.getAttribute("fileName");
	
	
	int courseId = Integer.parseInt(cid);
	//courseId = ${c1.getCid()};
	 
	 System.out.println("Inside Lectures jsp  "+ cid);
	 ConnectionManager conn = new ConnectionManager();
	 Connection c1 = conn.getConnection();
	 String sql = "SELECT * from lecture where cid = ?";
	 PreparedStatement pst = c1.prepareStatement(sql);
	 pst.setInt(1, courseId);
	 ResultSet rs = pst.executeQuery();
	 String type="", url = "", title="", description="";
	 int no = 0;
	 int userId = 0;
		while(rs.next())
		{
			userId = rs.getInt("uid");
			 url  = rs.getString("url");
			 type = rs.getString("type");
			 title = rs.getString("title");
			 description = rs.getString("description");
			
			out.write("Link to download lecture: <a href="+url+">Download</a><br>");
		} %>
		<div class="content">
    <div class="content_resize1">
    <div class="create_cor1"><%out.write(title); %> </div>
    <div class="video_side">
    <div class="vedio_box">
		<% 
			if(type.equals("audio"))
			{ 
			//	jqueryPlayer = jqueryPlayer.concat(jqueryPlayer);
			//	container  =container.concat(container);
			%>
			
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
 			$("#<% out.write(jqueryPlayer);%>").jPlayer({
  			ready: function () {
   			$(this).jPlayer("setMedia", {
    		mp3: "<%out.write(url); %>"
   			});
  				},
  			swfPath: "/js",
  			supplied: "mp3"
 			});

 
			var myCirclePlayer = new CirclePlayer("#<% out.write(jqueryPlayer);%>",
			{
				mp3: "<%out.write(url); %>"
			}, {
				cssSelectorAncestor: "#<% out.write(container);%>"
			});

			// This code creates a 2nd instance. Delete if not required.

			
		});
			
			<div id="<% out.write(jqueryPlayer);%>" class="cp-jplayer"></div>
		</script>
		<div class="prototype-wrapper"> <!-- A wrapper to emulate use in a webpage and center align -->


			<!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->

			<div id="<% out.write(container);%>" class="cp-container">
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
		
			
		<% 	}
			else if(type.equals("video"))
			{
				//mediaPlayer = mediaPlayer.concat(mediaPlayer);
				%>
			<div id="<%out.write(mediaPlayer); %>">JW Player goes here</div>	
			<script type="text/javascript" src="jwplayer/jwplayer.js"></script>
			<script type="text/javascript">
			jwplayer("<%out.write(mediaPlayer); %>").setup({
			flashplayer: "jwplayer/player.swf",
			file: "<% out.write(url);%>",
			image: ""
		});
	</script>
				
		<% 	}
			else if(type.equals("pdf"))
			{
				//placeHolder = placeHolder.concat(placeHolder);
				url = url.replaceAll(".pdf", ".swf");
				out.println(no);
				%>
			
			<div style="position:relative;left:10px;top:10px;">
	        <a id="<%out.write(placeHolder); %>" style="width:680px;height:480px;display:block"></a>
	        
	        <script type="text/javascript"> 
				var fp = new FlexPaperViewer(	
						 'FlexPaper/FlexPaperViewer',
						 '<%out.write(placeHolder); %>', { config : {
						 SwfFile : escape('<%out.write(url);%>'),
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
				
		<% 	}  
			else if(type.equals("pic"))
			{ %>
			<img src="<%out.write(url); %>"  />
				
			<% }
			else if(type.equals("text"))
			{
				%>
				<core:import var="data" url="<%out.write(url); %>" scope="session"/>
				<core:out value="${data}"/>
				<p><%out.write(url); %> </p>
				
				
		<% 	}
		%>
    
    
    
    
    
    </div>
    <br/><br/><br/>
    <p><%out.write(description); %></p>
    <a href='addLectures.html' >Add Lectures</a>
    <div class="create_cor">Comments:</div>
<div><textarea name="input3" style=" width:643px; height:80px;"></textarea></div><br />

<div class="save_bt1">Post</div>
    </div>
    <div class="option_side">
    
  
<% 
//String cid1 = (String)session.getAttribute("cid");
//int courseId1 = Integer.parseInt(cid1);
ConnectionManager conn1 = new ConnectionManager();
Connection c2 = conn1.getConnection();
String sql1 = "SELECT * from lecture where cid = ?";
PreparedStatement pst1 = c1.prepareStatement(sql1);
pst1.setInt(1, courseId);
ResultSet rs1 = pst1.executeQuery();
int lid=0;
int lectnum=0;
String url1= "";
String ltitle= "";
	while(rs1.next())
	{
		lectnum++;
		lid = rs1.getInt("lid");
		 url  = rs1.getString("url");
		 ltitle = rs1.getString("title");
		 
		 
		 %>
		<div class="optio_box">
		<%out.println("This is the lecture id "+lid); %>>
        <div class="option_thum"><img src="Style/images/2202.jpg" width="50" height="50" /></div>
        <%System.out.println("<a href=\"showLectures.html?lid="+lid+"\">"); 
        out.write("<a href=\"showLectures.html?lid="+lid+"\">") ;%> 
    <strong>Lecture <%out.println(lectnum); %></strong><br/><%out.println(ltitle); %></div>
<%} %>	

 
<div class="create_cor">Recommendations</div>
<div class="optio_box">
            <div class="option_thum"><img src="Style/images/2202.jpg" width="50" height="50" /></div>
        <strong>Lecture </strong><br />
Sample text</div>

    
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
</div>
</body>
</html>