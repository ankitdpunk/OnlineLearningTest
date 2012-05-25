<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
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
.button-blue1 {background-color:#316482; width:60px; filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#4794BF', endColorstr='#316482'); /* for IE */ background: -o-linear-gradient(top, #4794BF, #316482); /* for webkit browsers */ background: -moz-linear-gradient(top, #4794BF, #316482); /* for firefox 3.6+ */ background:-o-linear-gradient(top, #4794BF, #316482);
-moz-border-radius: 8px;
padding:5px;
-webkit-border-radius:8px;
border-radius:8px;
 border:1px solid #316482 !important; color:white !important;}
</style>

</style>
</head>

<body>


<form:form method="post" action="addContact.html" >	
<div class="signup">
<h2>Spring's form tags example</h2>	
	<table height="148" align="center">
	<tr>
	  <td width="79"><form:label path="email">Email</form:label></td>
	  <td width="371"><form:input path="email" />
	    
	</tr>
	<tr>
		<td><form:label path="name">Name</form:label></td>
	  <td><form:input path="name" />
	  
	</tr>
	<tr>
		<td><form:label path="password">password</form:label></td>
	  <td><form:input path="password" />
	   
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="Signup"/>
		</td>
	</tr>
	
	
	<tr>
		<td colspan="2"><div class="button-blue1">&nbsp;&nbsp;Signup</div></td>
	</tr>
  </table>	
  </form:form>
	
</div>
</body>
</html>