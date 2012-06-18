<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" 
         
         
         import="net.spring3.form.Course"
         import="java.util.*"
         import="java.lang.*"
         import="java.sql.*"
         import="net.spring3.controller.ConnectionManager"
        
  %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>on line education</title>
<link rel="icon" 
      type="image/png" 
      href="Style/images/logo copy.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="Style/style.css" rel="stylesheet" type="text/css" />
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
 <!--<link href="menu.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>-->
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

<div class="top_menu"><a href="logout.html">Log Out</a></div>
<div class="top_menu"><a href='Createacourse.html' >Create Course</a></div>
<div class="top_menu"><a href='browsecourse.html' >Browse course</a></div>

<ul id="nav">
	

	<li><a href="#"><core:out value="${login.email}"/></a>
	<ul>
		<li><a href="mycourses.html">Courses</a></li>
		<li><a href="manageprofile.html">Account</a></li>
	
	</ul>			
		<div class="clear"></div>
	</li>
	
</ul>


      </div>
      <div class="hbg" style="background-image:url(Style/images/banner_3.jpg);
	background-repeat:no-repeat;"><div class="info fl">
          <h3>Education for Everyone. </h3>
          <div style="width:300px; margin:auto;"><p>We offer courses from the top universities, for free.
          Learn from world-class professors, watch high quality lectures, achieve mastery via interactive exercises, and collaborate with a global community of students. </p></div>
      </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      
      <div style="margin-bottom:10px; margin-top:10px;"><span class="blue" style="font-size: 24px; color: #5591FF;">Trending Paid Courses</span><a href="browsecourse.html"><span class="seemore">see more</span></a></div>
      <%
     ConnectionManager conn = new ConnectionManager();
 	 Connection c1 = conn.getConnection();
 	 String sql = "SELECT * from course ";
 	 PreparedStatement pst = c1.prepareStatement(sql);
 	 
 	 ResultSet rs = pst.executeQuery();
 	 int cidPage=0;
 	 String ctitle = "";
 	 int no = 0;
 		while(rs.next() && no!=6)
 		{
 			 no++;
 			 cidPage  = rs.getInt("cid"); 			
 			 ctitle = rs.getString("ctitle"); 			
 			%>
 			<div class="midbox" style="margin-right: 20px; padding: 5px; border: 1px solid #CCC; width: 250px ; margin-left:20px;"> <img src="Style/images/EDUACTE.jpg" width="250" height="127" />
        	<div class=" boxblack">
          <h5><%
          System.out.println("The course id in coursePage controlle is: "+ cidPage);
          out.write("<a href=\"coursePage.html?cidPage="+cidPage+"\">") ;          
          out.write(ctitle); 
          %> </a></h5>
        </div>
      </div>
 	<%	}    
      
      
      %>
      
  </div>
  <div class="footer">About EduOnWeb</div>
</div>
</body>
</html>