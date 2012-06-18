<%@ page language="java" contentType="text/html"%>
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
</div>


      </div>
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="create_cor_box">
        <div class=" create_cor">Created Courses</div>   
        <%
        Login log = new Login();
    	log = (Login)session.getAttribute("currentLogin");
    	int uid = log.getUid();

  /*   ArrayList<Course> clist = new ArrayList<Course>();
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
     //	out.write("The course id is "+ cid);
     	String cnum = new Integer(cid).toString();   	
     	
     	
    	 out.write("<a href=\"coursePage.html?cidPage="+cid+"\">") ; */
    	 
    	
    	ConnectionManager conn2 = new ConnectionManager();
		Connection c2 = conn2.getConnection();
		String sql1 = "SELECT * from course c WHERE " +
					" c.uid = ? ";
		PreparedStatement pst2 = c2.prepareStatement(sql1);
		pst2.setInt(1, uid);
		ResultSet rs2 = pst2.executeQuery();
		int cid = 0;
		String ctitle = "";
		while(rs2.next())
		{
			cid = rs2.getInt("cid");
			ctitle = rs2.getString("ctitle");
			out.write("<a href=\"coursePage.html?cidPage="+cid+"\">") ;
		
		
 
     	ConnectionManager conn = new ConnectionManager();
 	 	Connection c1 = conn.getConnection();
 	 	String sql = "SELECT * from lecture where cid=? ";
 	 	PreparedStatement pst = c1.prepareStatement(sql);
 	 	pst.setInt(1,cid);
 	  	ResultSet rs = pst.executeQuery();
 	 	int lnum=0;
 	 
 		while(rs.next())
 		{
 			
 			lnum++; 
 		}
     
     %>       
      <div class="box" style=" height:auto; float:left;">
	 <div class="pic"><img src="Style/images/2202.jpg" width="50" height="50" /></div>
	<a href="#"><strong>Courses Name:  <%out.write(ctitle); %></strong></a><br />
       Free <br />
       <%out.println(lnum); 
       if(lnum == 0 || lnum==1)
       {
    	   out.write("Lecture");
       }
       else
       {
    	   out.write("Lectures");
       }
       
       %><br/><br/>
       <div class="save_bt"><%out.write("<a href=\"deleteCourse.html?cidPage="+cid+"\">") ; %>Delete Course</a></div>
       </div>   
        <%} %>   
    </div>
      
      <div class="create_cor_box">
     <div class=" create_cor">Taking Courses</div>
           <div class="box" style=" height:auto; float:left;">
	 <div class="pic"><img src="Style/images/2202.jpg" width="50" height="50" /></div>
<a href="#"><strong>Courses name create by you</strong></a><br />
       Free <br />
       0 Lecture <br /><br />
       <div class="save_bt">Unsubscribe Course</div>
       </div>
       
        
       
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