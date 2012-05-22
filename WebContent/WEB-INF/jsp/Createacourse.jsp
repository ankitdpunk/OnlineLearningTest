<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <p> <img src="Style/images/logo.png" width="237" height="42" /> </p>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="Createacourse.html">Create a Course
</a></li>
          <li><a href="#">Browe Course </a></li>
          <li><a href="#">My Courses</a></li>
          <li><a href="#"><c:out value="${login.email}"/><br /></a></li>
        
        </ul>
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <h2 style="color:#000;">Create a Course </h2>
	  Your course will be created as a draft. It won't be visible until you publish it!
	  
      <form id="form1" name="form1" method="post" action="Lectures.html">
        <table width="843" height="357" border="0" align="center">
          <tr>
            <td width="148" height="54" align="right" valign="top"><h4>Course Title: *</h4>
            </td>
            <td width="679"><div class="input-field">
                    <input id="title" name="CourseTitle" type="text" class="text-input  " maxlength="60" style="width:500px; height:30px;">
                    <span style="color:#AAA; padding:3px 7px 0px; text-align:right">60 characters left</span>
                    
					
            </div></td>
          </tr>
          <tr>
            <td height="44" align="right" valign="top"> <h4>Course Category: </h4></td>
            <td><span class="input-field">
              <select name="courseCategoryId" id="courseCategoryId" style="width:auto;">
                <option value="" selected="selected">-- Select One --</option>
                <option value="Arts">Arts</option>
                <option value="Business">Business</option>
                <option value="Crafts and Hobbies">Crafts and Hobbies</option>
                <option value="Design">Design</option>
                <option value="Education">Education</option>
                <option value="Games">Games</option>
                <option value="Health and Fitness">Health and Fitness</option>
                <option value="Humanities">Humanities</option>
                <option value="Languages">Languages</option>
                <option value="Lifestyle">Lifestyle</option>
                <option value="Math and Science">Math and Science</option>
                <option value="Music">Music</option>
                <option value="Other">Other</option>
                <option value="Social Sciences">Social Sciences</option>
                <option value="Sports">Sports</option>
                <option value="Technology">Technology</option>
                <option value="Test">Test</option>
              </select>
            </span></td>
          </tr>
          <tr>
            <td height="65" align="right" valign="top"><h4>Headline: 
              
              <span class="required-text"> *</span></h4></td>
            <td><div class="input-field">
              <textarea name="Headline" class="text-input  " id="title2" style="width:500px; height:30px;"></textarea>
              <span style="color:#AAA; padding:3px 7px 0px; text-align:right">120 characters left</span> </div></td>
          </tr>
          <tr>
            <td height="61" align="right" valign="top"><h4>Keywords:</h4></td>
            <td><div class="input-field">
              <textarea name="Keywords" class="text-input  " id="title22" style="width:500px; height:30px;"></textarea>
            </div></td>
          </tr>
          <tr>
            <td height="66" align="right"><h4>Content Language: </h4></td>
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
            <td height="51">&nbsp;</td>
            <td><div class="button-blue">&nbsp;&nbsp;Save</div></td>
          </tr>
          <tr>
		<td colspan="2">
			<input type="submit" value="Create Course"/>
		</td>
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