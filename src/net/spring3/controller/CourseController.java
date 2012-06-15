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
@RequestMapping(value = "/Lectures")
public class CourseController
{
  @RequestMapping(method = RequestMethod.GET)
  public String getCourseId(Model model, HttpServletRequest request, HttpSession session, Login login)
  {
	//Course c1 = new Course();
	  System.out.println("Inside get of discussions");
	String cid = request.getParameter("cid");
	CreateCourse cc = new CreateCourse();
	Course course = cc.createCourse(cid);
	session.setAttribute("currentCourse", course);
	login=(Login)session.getAttribute("currentLogin");
	
	
	
//	c1.setCid(courseId);
	System.out.println("The cid i get is "+ cid);
	session.setAttribute("cid", cid);
	model.addAttribute("login", login);
	
	return "/Lectures";
  }
  @RequestMapping("/Lectures")
  public ModelAndView createLecture( HttpSession session, Login login, Model model) {
	   System.out.println("I am in get of lectures");
	   model.addAttribute("login", login);
      return new ModelAndView("/Lectures");
      
  } 
}