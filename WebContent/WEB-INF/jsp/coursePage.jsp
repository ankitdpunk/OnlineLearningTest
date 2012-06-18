<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" 
         
         
         import="net.spring3.form.Course"
         import="net.spring3.form.Login"
         import="java.util.*"
         import="java.lang.*"
         import="java.sql.*"
         import="net.spring3.controller.ConnectionManager"
        
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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

<style type="text/css">
<!--
.style1 {color: #517223}
-->
</style>
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
      <div class="hbg" >
      <div class=" hbgimg"><img src="Style/images/video15.jpg" width="400" height="240" /></div>
        <div class="info fl">
         <% 
         Course cor = new Course();
         cor = (Course)session.getAttribute("currentCourse");        
         out.write("<h1>"+cor.getCourseTitle()+"</h1>");
         %>
         <h1><% 
         System.out.println("The currentCourse title is: "+ cor.getCourseTitle());
         cor.getCourseTitle();%></h1>
         By
         
         <%
         ConnectionManager conn1 = new ConnectionManager();
     	 Connection c1 = conn1.getConnection();
     	 String sql1 = "select * from course c where c.cid=?;";
     	 PreparedStatement pst1 = c1.prepareStatement(sql1);
     	 pst1.setInt(1,cor.getCid());
     	 ResultSet rs1 = pst1.executeQuery();
     	 String cname = "";
     	 String ctitle = "";
     	 int cuid = 0;
     		while(rs1.next())
     		{
     			
     			 cuid  = rs1.getInt("uid");
     			 
     		}
     		ConnectionManager conn2 = new ConnectionManager();
        	 Connection c2 = conn2.getConnection();
        	 String sql2 = "select * from user u where u.uid=?;";
        	 PreparedStatement pst2 = c2.prepareStatement(sql2);
        	 pst2.setInt(1,cuid);
        	 ResultSet rs2 = pst2.executeQuery();
        	 String name = "";
        		while(rs2.next())
        		{
        			
        			 name  = rs2.getString("name");
        			 
        		}
     			 
         
         
         %>
          <h3><%out.println(name); %></h3>
          <%out.write(cor.getHeadline()); %><br>
          <%
          	Login login1 = new Login();
          	login1= (Login)session.getAttribute("currentLogin");
          	
          %>
          <a href="#"><img src="Style/images/button .png" width="174" height="76" /></a> 
        </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize"> <span class="one"><%out.println(name); %></span><br />
      <hr />
      <p>Put text from user descrioton page after creating it ......</p>
      <span class="one">Insturctors</span><br/><hr/>
      <p> Put text here............. </p>
      <span class="one">Lectures </span>
     
      <hr />
      <br />
      <div class="leftbox" style="width:970px;">
      <%ConnectionManager conn3 = new ConnectionManager();
 	 Connection c3 = conn3.getConnection();
 	 String sql3 = "SELECT * from lecture where cid = ?";
 	 PreparedStatement pst3 = c3.prepareStatement(sql3);
 	 pst3.setInt(1, cor.getCid());
 	 ResultSet rs3 = pst3.executeQuery();
 	 String type="", url = "", title="", description="";
 	 int no1 = 0, lid=0;
 		while(rs3.next())
 		{
 			 no1++;
 			 lid =  rs3.getInt("lid");
 			 url  = rs3.getString("url");
 			 type = rs3.getString("type");
 			 title = rs3.getString("title");
 			 description = rs3.getString("description");
 		//	out.println(title);
 		//	out.write("The download link is <a href="+url+">Download Here</a><br>");
 		 %>
        <div class="videodetails">
          <div class="pic">
          <% out.write("<a href=\"showLectures.html?lid="+lid+"\">") ; %><img src="Style/images/video.png" width="50" height="50" border="0" align="left" /></a></div>
          <p> Lecture <%out.println(no1); %> </p>
        </div>
       <%  } %>
        </div>
        
      </div>
        <hr />
  
    </div>
    <div class="footer">
      <div class="footer_resize">
      <p class="lf">&copy; Copyright | All Right Reserved 2012      </p>
      <div class="clr"></div>
    </div>
</div>
</div>
</div>
</body>
</html>