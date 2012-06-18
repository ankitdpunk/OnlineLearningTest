<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>on line education</title>
<meta http-equiv="content-type" content="text/html" />
<link href="Style/style.css" rel="stylesheet" type="text/css" />

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


<div class="top_menu"><a href='Login.html' >Log in</a></div>
<div class="top_menu"><a href='signup1.html' >Sign up</a></div>
<div class="top_menu"><a href='browsecourse.html' >Browse course</a></div>


      </div>
      
    </div>
  </div>
  <div class="slider"></div>
  <div class="content">
    <div class="content_resize">
      
      <div style="margin-bottom:10px; margin-top:10px; border-bottom:1px solid #dddddd;">
      <span class="blue" style="font-size: 24px; color: #5591FF;">Sign Up</span>
        <p> Sign into your Coursera account with an email and a previously chosen password. </p>
      </div>
      <div style="margin-bottom:10px; margin-top:10px;">
       <form:form method="post" action="main.html" >	
          <table width="669" border="0" align="left" >
           
            <tr>
              <td height="39"><form:label path="email">Email </form:label></td>
              <td><form:input path="email"  /></td>
            </tr>
            <tr>
              <td height="41"><form:label path="password">Password</form:label></td>
              <td><form:input path="password"  /></td>
            </tr>
            <tr>
              <td>${login.message}</td>
            </tr>
            <tr>
              <td><input type="submit" class="save_bt" value="Submit" /></td>
            </tr>
            
          </table>
          <table width="289" height="62" border="0" align="right">
            <tr>
              <td>No Account Yet?</td>
            </tr>
              <tr>
              <td><a href="signup1.html">Sign Up</a> today. </td>
            </tr>
          </table> 
         </form:form>
      </div>
    </div>
  </div>
  <div class="footer">About EduOnWeb</div>
</div>
</body>
</html>