<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>on line</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="Style/style.css" rel="stylesheet" type="text/css" /></head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <p><br /> <img src="Style/images/logo.png" width="237" height="42" /> </p>
      </div><div style="float:right; margin-right:10px; margin-bottom:10px; margin-top:10px; color:#fff;">Search : 
		  <input type="text" name="textfield" /></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="#">Create a Course
</a></li>
          <li><a href="#">Browse Course </a></li>
          <li><a href="#">My Courses</a></li>
          <li><a href="#">Account holder<br />
          </a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <h2 style="color:#000;">Add a File  </h2>
       <form:form modelAttribute="uploadItem" method="post" enctype="multipart/form-data">
            <fieldset>
                <legend>Upload Fields</legend>
 
                <p>
                    <form:label path="name">Name</form:label><br/>
                    <form:input path="name"/>
                </p>
 
                <p>
                    <form:label path="fileData">File</form:label><br/>
                    <input id="fileData" name="fileData" type="file" value=""/>
                    
                </p>
 
                <p>
                    <input type="submit" />
                </p>
 
            </fieldset>
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