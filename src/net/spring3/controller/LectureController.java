package net.spring3.controller;
import net.spring3.form.*;
import java.io.*;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
 
import net.spring3.controller.UploadItem;
import net.spring3.form.Login;
 
@Controller
@RequestMapping(value = "/showLectures")
public class LectureController
{
  @RequestMapping(method = RequestMethod.GET)
  public String getLectureId(Model model, HttpServletRequest request, HttpSession session, Login login)
  {
	//Course c1 = new Course();
	  System.out.println("Inside get of Lectures Controller");
	String lid = request.getParameter("lid");
	
	System.out.println("The lid is "+  lid);	
//	c1.setCid(courseId);
	System.out.println("The lid i get is "+ lid);
	session.setAttribute("lid", lid);
	model.addAttribute("login", login);
	
	return "/showLectures";
  }
 
}