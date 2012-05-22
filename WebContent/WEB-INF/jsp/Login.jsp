<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.signup{
	height:300px;
	width:700px;
	border:1px solid #999;
	box-shadow: 2px 2px 2px 2px #888;
	}
.colm1{
	width:250px;
	height:20px;
	padding:10px;
	margin:5px;
	float:left;
	text-align: center;

	}
	.colm2{
	width:250px;
	height:20px;
	padding:10px;
	margin:5px;
	float:right;

	}	
.button-blue { background-color:#316482; width:60px; filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#4794BF', endColorstr='#316482'); /* for IE */ background: -o-linear-gradient(top, #4794BF, #316482); /* for webkit browsers */ background: -moz-linear-gradient(top, #4794BF, #316482); /* for firefox 3.6+ */ background:-o-linear-gradient(top, #4794BF, #316482);
-moz-border-radius: 8px;
padding:5px;
-webkit-border-radius:8px;
border-radius:8px;
 border:1px solid #316482 !important; color:white !important;}
 .button-blue a{
 color:white;
 text-decoration:none;}
.style3 {font-family:Georgia ; font-size:12px;}
.style4 {font-family: Georgia}
</style>

</head>


<body>
<div class="signup">
  <h3>Login with Your  Account</h3>
<form:form method="post" action="main.html" >		
	<table width="501" height="144" align="center">
	<tr>
		<td width="59"><form:label path="email">Email</form:label></td>
		<td width="192"><form:input path="email" />
			     
	</tr>
	
	<tr>
		<td><form:label path="password">password</form:label></td>
		<td><form:input path="password" />
	  
	</tr>
	
	
	<tr>
		<td colspan="2">
			 <div class="button-blue"><a href="#">&nbsp;&nbsp;Login</a></div> 
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="log In"/>
		</td>
	</tr>
	</table>	
  </form:form>

</div>
</body>
</html>
