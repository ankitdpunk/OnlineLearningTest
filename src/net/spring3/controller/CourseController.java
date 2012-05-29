package net.spring3.controller;
import net.spring3.form.*;
import java.io.*;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
 
import net.spring3.controller.UploadItem;
import net.spring3.form.Login;
 
@Controller
@RequestMapping(value = "/Discussions(0)")
public class CourseController
{
  @RequestMapping(method = RequestMethod.GET)
  public String getCourseId(Model model, HttpServletRequest request, HttpSession session)
  {
	//Course c1 = new Course();
	  System.out.println("Inside get of discussions");
	String cid = request.getParameter("cid");
	CreateCourse cc = new CreateCourse();
	Course course = cc.createCourse(cid);
	session.setAttribute("currentCourse", course);
	
	
	
//	c1.setCid(courseId);
	System.out.println("The cid i get is "+ cid);
	session.setAttribute("cid", cid);
	//model.addAttribute("cid", c1);
	
	
	
    
    
  
 
      return "/Discussions(0)";
  }
}