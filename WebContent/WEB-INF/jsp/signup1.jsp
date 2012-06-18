<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>on line education</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="Style/style.css" rel="stylesheet" type="text/css" />
<link rel="icon" 
      type="image/png" 
      href="Style/images/logo copy.png" />
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
      <span class="blue" style="font-size: 24px; color: #5591FF;">Sign Up.</span>
        <p> Sign up with EduOnWeb </p>
      </div>
      
        <form:form method="post" action="addContact.html" > <table width="669" border="0" align="left" style="border-right:1px solid #dddddd; ">
          <tr>
            <td width="140" height="39"><form:label path="email">Email</form:label></td>
            <td width="520"><form:input path="email" /></td>
           </td>
          </tr>
          <tr>
            <td width="140" height="39"><form:label path="name">Name</form:label></td>
            <td width="520"><form:input path="name" /></td>
          </tr>
        <tr>
            <td width="140" height="39"><form:label path="password">Password</form:label></td>
            <td width="520"><form:input path="password" /></td>
          </tr>
          <tr>
          <td>${login.message}</td>
          </tr>
          <tr>
            <td class="save_bt"><input type="submit" value="Sign Up" style="background-color: #377dfe;
            border:none;color: white;"/></td>
            
          </tr>
        </table>
      </form:form>
    
    </div>
  </div>
  <div class="footer">About EduOnWeb</div>
</div>
</body>
</html>