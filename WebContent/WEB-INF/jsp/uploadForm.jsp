<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>on line</title>
<link rel="icon" 
      type="image/png" 
      href="Style/images/logo copy.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="Style/style.css" rel="stylesheet" type="text/css" /></head>
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
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div style="margin-bottom:10px; margin-top:10px; border-bottom:1px solid #dddddd;"><span class="blue" style="font-size: 24px; color: #5591FF;">Add a file</span><p></p>
      </div>
     
      <form:form modelAttribute="uploadItem" method="post" enctype="multipart/form-data">
        <table width="711" height="161" border="0" align="left" >
          <tr>
            <td width="140" height="39"> <form:label path="fileData">File</form:label><br/></td>
            <td width="679"><label>
              <input id="fileData" name="fileData" type="file" value=""/>
            </label></td>
          </tr>
        <tr>
            <td height="32"> <form:label path="name">Title</form:label><br/>
                    
           </td>
            <td><div class="input-field">
              <input name="name" type="text" / style=" width:400px; height:30px;" />
            </div></td>
          </tr>
          <tr>
            <td height="32"><form:label path="description">Description</form:label></td>
            <td><div class="input-field">
              <textarea name="description" style=" width:400px; height:80px;"></textarea>
            </div></td>
          </tr>
        
          <tr>
            <td height="51">&nbsp;</td>
            <td><input type = "submit" class="save_bt" /></td>
         
            <div class="save_bt"><a href="mycourses.html">Courses</a></div></td>
          </tr>
        </table>
   </form:form>
      <div class="clr"></div>
		
		
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>