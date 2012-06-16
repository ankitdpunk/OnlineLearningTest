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
<title>on line</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="Style/style.css" rel="stylesheet" type="text/css" />

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


<div class="top_menu">Create Course</div>
<div class="top_menu">Browse Course</div>
<div class="username">
Ankita Singh
</div>


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
          <h3>Peter Struck</h3>
          This course will focus on the myths of ancient Greece and Rome, as a way of exploring the nature of myth and the function it plays for individuals, societies, and 
<a href="#"><img src="Style/images/button .png" width="174" height="76" /></a>
        </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize"> <span class="one">Ark lassoff</span><br />
      <hr />
      <p>You learned a little Javascript,  but you still look at sites with slick, smooth elegant user interfaces and wonder:  How DO they do that.  Here's a secret-- The answer is AJAX.  Asynchronous Javascript and XML.  If you want to make pages on your web application respond quickly, and with a minimum of screen refreshes, this IS the technology to learn.
        
        With a little Javascript knowlege you can use AJAX to take database information and store, alter, sort and conditionally format it all on the client side.  This minimizes the load on your sever and makes your applications respond quickly and without reloading the HTML page.  AJAX comminicates wth the server behind the scenes while your user continues to use your web site, accessing the information they want.
        
        In this course master trainer Mark Lassoff takes you through the basics of AJAX righ to advanced topics like parsing JSON responses from web services.  This couse is recommended for all web developers who want to improve their client side skills, and make killer responsive web applications. </p>
      <span class="one">Insturctors</span><br />
      <hr />
      <p>LearnToProgram.tv is a leading corporate technical training firm. LearnToProgram.tv provides training for software, web and mobile developers world wide. Our courses have taken place at Fortune 500 companies, training centers and Federal Government organizations. Now on Udemy, you can experience the same great instruction that you get in one of our classroom sessions-- at a small fraction of the price.
        
        About Mark-- The Guy Behind LearnToProgram.tv
        
        Mark Lassoff’s parents frequently claim that he was born to be a programmer. In the mid-eighties, when the neighborhood kids were outside playing kickball and throwing snowballs, Mark was hard at work on his Commodore 64 writing games in the BASIC programming language. Computers and programming continued to be a strong interest in college where Mark majored in Communications and Computer Science. After completing his college career, Mark worked in the software and web development departments at several large corporations.
        
        In 2001, on a whim, while his contemporaries were conquering the dot com world, Mark accepted a position training programmers in a technical training center in Austin, Texas. It was there that Mark fell in love with teaching programming, which has been his passion ever since. Today Mark is a top technical trainer, traveling the country providing training for software and web developers. Mark's training clients include the Department of Defense, Lockheed Martin, Discover Card Services, and Kaiser Permanente. He has consulted for companies such as Dell, Target, Lockheed Martin, and government agencies including the US House of Representatives. In addition to traditional classroom training and consulting, Mark releases video tutorial training for aspiring programmers on his  </p><span class="one">Leactures:</span>
     
      <hr />
      <br />
      <div class="leftbox" style="width:970px;">
      <%ConnectionManager conn = new ConnectionManager();
 	 Connection c1 = conn.getConnection();
 	 String sql = "SELECT * from lecture where cid = ?";
 	 PreparedStatement pst = c1.prepareStatement(sql);
 	 pst.setInt(1, cor.getCid());
 	 ResultSet rs = pst.executeQuery();
 	 String type="", url = "", title="", description="";
 	 int no = 0, lid=0;
 		while(rs.next())
 		{
 			 no++;
 			 lid =  rs.getInt("lid");
 			 url  = rs.getString("url");
 			 type = rs.getString("type");
 			 title = rs.getString("title");
 			 description = rs.getString("description");
 			out.println(title);
 		//	out.write("The download link is <a href="+url+">Download Here</a><br>");
 		 %>
        <div class="videodetails">
          <div class="pic">
          <% out.write("<a href=\"showLectures.html?lid="+lid+"\">") ; %><img src="Style/images/video.png" width="50" height="50" border="0" align="left" /></a></div>
          <p> Lecture <%out.write(no); %> :</p>
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