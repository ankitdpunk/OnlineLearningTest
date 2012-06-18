<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize"> 
    
    <div style="margin-bottom:10px; margin-top:10px; border-bottom:1px solid #dddddd;"><span class="blue" style="font-size: 24px; color: #5591FF;">Create a Course</span>
      <p>Your course will be created as a draft. It won't be visible until you publish it! </p>
    </div>
    <form id="form1" name="form1" method="post" action="addLectures.html">
   <table width="711" border="0" align="left" style="border-right:1px solid #dddddd; ">
          <tr>
            <td width="140" height="39">Course Title: *</td>
            <td width="520"><div class="input-field">
              <input id="title" name="CourseTitle" type="text" class="text-input" maxlength="60" style="width:500px; height:30px;">
              
          </tr>
          <tr>
            <td height="39">Course Category:</td>
            <td><span class="input-field">
              <select name="courseCategoryId" id="courseCategoryId" style="width:auto;">
                <option value="" selected="selected">-- Select One --</option>
                <option value="273">Arts</option>
                <option value="268">Business</option>
                <option value="275">Crafts and Hobbies</option>
                <option value="269">Design</option>
                <option value="277">Education</option>
                <option value="281">Games</option>
                <option value="276">Health and Fitness</option>
                <option value="272">Humanities</option>
                <option value="279">Languages</option>
                <option value="274">Lifestyle</option>
                <option value="271">Math and Science</option>
                <option value="278">Music</option>
                <option value="282">Other</option>
                <option value="270">Social Sciences</option>
                <option value="280">Sports</option>
                <option value="267">Technology</option>
                <option value="283">Test</option>
              </select>
            </span></td>
          </tr>
          <tr>
            <td height="41">Headline: <span class="required-text"> *</span></td>
            <td><div class="input-field">
              <textarea name="Headline" style=" width:400px; height:80px;"></textarea>
              <span style="color:#AAA; padding:3px 7px 0px; text-align:right">120 characters left</span></div></td>
          </tr>
          <tr>
            <td height="41">Keywords</td>
            <td><input name="Keywords" type="text" / style=" width:400px; height:30px;" /></td>
          </tr>
          <tr>
            <td height="41">Content Language: </td>
            <td><span class="input-field">
              <select name="languageId" id="languageId" style="width:auto;">
                <option value="">-- Select One --</option>
                <option value="om">(Afan)/Oromoor/Oriya</option>
                <option value="ab">Abkhazian</option>
                <option value="aa">Afar</option>
                <option value="af">Afrikaans</option>
                <option value="sq">Albanian</option>
                <option value="am">Amharic</option>
                <option value="ar">Arabic</option>
                <option value="hy">Armenian</option>
                <option value="as">Assamese</option>
                <option value="ay">Aymara</option>
                <option value="az">Azerbaijani</option>
                <option value="ba">Bashkir</option>
                <option value="eu">Basque</option>
                <option value="bn">Bengali/Bangla</option>
                <option value="dz">Bhutani</option>
                <option value="bh">Bihari</option>
                <option value="bi">Bislama</option>
                <option value="br">Breton</option>
                <option value="bg">Bulgarian</option>
                <option value="my">Burmese</option>
                <option value="be">Byelorussian</option>
                <option value="km">Cambodian</option>
                <option value="ca">Catalan</option>
                <option value="zh">Chinese</option>
                <option value="co">Corsican</option>
                <option value="hr">Croatian</option>
                <option value="cs">Czech</option>
                <option value="da">Danish</option>
                <option value="nl">Dutch</option>
                <option value="en" selected="selected">English</option>
                <option value="eo">Esperanto</option>
                <option value="et">Estonian</option>
                <option value="fo">Faeroese</option>
                <option value="fj">Fiji</option>
                <option value="fi">Finnish</option>
                <option value="fr">French</option>
                <option value="fy">Frisian</option>
                <option value="gl">Galician</option>
                <option value="ka">Georgian</option>
                <option value="de">German</option>
                <option value="el">Greek</option>
                <option value="kl">Greenlandic</option>
                <option value="gn">Guarani</option>
                <option value="gu">Gujarati</option>
                <option value="ha">Hausa</option>
                <option value="iw">Hebrew</option>
                <option value="hi">Hindi</option>
                <option value="hu">Hungarian</option>
                <option value="is">Icelandic</option>
                <option value="in">Indonesian</option>
                <option value="ia">Interlingua</option>
                <option value="ie">Interlingue</option>
                <option value="ik">Inupiak</option>
                <option value="ga">Irish</option>
                <option value="it">Italian</option>
                <option value="ja">Japanese</option>
                <option value="jw">Javanese</option>
                <option value="kn">Kannada</option>
                <option value="ks">Kashmiri</option>
                <option value="kk">Kazakh</option>
                <option value="rw">Kinyarwanda</option>
                <option value="ky">Kirghiz</option>
                <option value="rn">Kirundi</option>
                <option value="ko">Korean</option>
                <option value="ku">Kurdish</option>
                <option value="lo">Laothian</option>
                <option value="la">Latin</option>
                <option value="lv">Latvian/Lettish</option>
                <option value="ln">Lingala</option>
                <option value="lt">Lithuanian</option>
                <option value="mk">Macedonian</option>
                <option value="mg">Malagasy</option>
                <option value="ms">Malay</option>
                <option value="ml">Malayalam</option>
                <option value="mt">Maltese</option>
                <option value="mi">Maori</option>
                <option value="mr">Marathi</option>
                <option value="mo">Moldavian</option>
                <option value="mn">Mongolian</option>
                <option value="na">Nauru</option>
                <option value="ne">Nepali</option>
                <option value="no">Norwegian</option>
                <option value="oc">Occitan</option>
                <option value="ps">Pashto/Pushto</option>
                <option value="fa">Persian</option>
                <option value="pl">Polish</option>
                <option value="pt">Portuguese</option>
                <option value="pa">Punjabi</option>
                <option value="qu">Quechua</option>
                <option value="rm">Rhaeto-Romance</option>
                <option value="ro">Romanian</option>
                <option value="ru">Russian</option>
                <option value="sm">Samoan</option>
                <option value="sg">Sangro</option>
                <option value="sa">Sanskrit</option>
                <option value="gd">Scots/Gaelic</option>
                <option value="sr">Serbian</option>
                <option value="sh">Serbo-Croatian</option>
                <option value="st">Sesotho</option>
                <option value="tn">Setswana</option>
                <option value="sn">Shona</option>
                <option value="sd">Sindhi</option>
                <option value="si">Singhalese</option>
                <option value="ss">Siswati</option>
                <option value="sk">Slovak</option>
                <option value="sl">Slovenian</option>
                <option value="so">Somali</option>
                <option value="es">Spanish</option>
                <option value="su">Sundanese</option>
                <option value="sw">Swahili</option>
                <option value="sv">Swedish</option>
                <option value="tl">Tagalog</option>
                <option value="tg">Tajik</option>
                <option value="ta">Tamil</option>
                <option value="tt">Tatar</option>
                <option value="te">Tegulu</option>
                <option value="th">Thai</option>
                <option value="bo">Tibetan</option>
                <option value="ti">Tigrinya</option>
                <option value="to">Tonga</option>
                <option value="ts">Tsonga</option>
                <option value="tr">Turkish</option>
                <option value="tk">Turkmen</option>
                <option value="tw">Twi</option>
                <option value="uk">Ukrainian</option>
                <option value="ur">Urdu</option>
                <option value="uz">Uzbek</option>
                <option value="vi">Vietnamese</option>
                <option value="vo">Volapuk</option>
                <option value="cy">Welsh</option>
                <option value="wo">Wolof</option>
                <option value="xh">Xhosa</option>
                <option value="ji">Yiddish</option>
                <option value="yo">Yoruba</option>
                <option value="zu">Zulu</option>
              </select>
            </span></td>
          </tr>
          <tr>
            <td class="save_bt"><input type="submit" value="Create Course" style="background-color: #377dfe;
            border:none;color: white;"/></td>
          </tr>
        </table>
         </form>
        
      <div class="clr"></div>
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
</body>
</html>