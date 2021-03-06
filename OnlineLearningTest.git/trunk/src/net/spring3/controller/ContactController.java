package net.spring3.controller;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*; 
import org.springframework.validation.ObjectError;

import java.util.*;
import javax.servlet.http.HttpSession;
import java.io.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.spring3.validator.SignupValidator;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import net.spring3.form.*;
 
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
///import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.support.SessionStatus;
@Controller
@SessionAttributes
public class ContactController {
	
//	private HttpSession session ;
//	private HttpServletRequest request;
		
	@RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public ModelAndView addContact(@ModelAttribute Tutor tutor, Model model) {
		System.out.println("Name:" + tutor.getName() +
                "email:" + tutor.getEmail());
		
		StoreUserDetails sd = new StoreUserDetails();
		sd.storeInfo(tutor);
		System.out.println("I am here");
		model.addAttribute("tutor", tutor);
		return new ModelAndView("/browsecourse");
       } 	
	
	@RequestMapping(value = "/main", method = RequestMethod.POST)
    public ModelAndView addLogin(@ModelAttribute Login login, Model model, HttpSession session, HttpServletRequest request, SessionStatus status) 
	
	{
		
		
		LoginValidator lv = new LoginValidator();
		String str = lv.validate(login);
		if(str.equals("User does not exist") || str.equals("Incorrect Password"))
		{
			Login login1 = new Login();
			session.setAttribute("currentLogin", login1);
			status.setComplete();
			login.setMessage(str);
			return new ModelAndView("/Login", "command", new Login());
		}
		else
		{
			session.setAttribute("currentLogin", login);
			System.out.println("Password:" + login.getPassword() +"\n"+
	                "email:" + login.getEmail());
			System.out.println("I am in addContact1");
			System.out.println(login.getEmail());
			model.addAttribute("login", login);
			return new ModelAndView("/main");
		}
	//	return new ModelAndView("main");
		//return "redirect:course2.html";
	}
/*	@RequestMapping(value = "/course2", method = RequestMethod.POST)
    public ModelAndView addContact(@ModelAttribute Login login, Model model, HttpSession session) {
		System.out.println("password:" + login.getPassword() +
                "email:" + login.getEmail());
		
		
		   if(session.getAttribute("currentLogin") == null)
		   {
			   return new ModelAndView ("/course2");
		   }
		   else
		   {
			   login = (Login)session.getAttribute("currentLogin");
		System.out.println("I am here");
		model.addAttribute("login", login);
		return new ModelAndView ("/course2");
		   }
		//return "redirect:course2.html";
	} */
	@RequestMapping("/course2")
    public ModelAndView course2(@ModelAttribute Login login, Model model, HttpSession session) {
		System.out.println("password:" + login.getPassword() +
                "email:" + login.getEmail());
		
		
		   if(session.getAttribute("currentLogin") == null)
		   {
			   return new ModelAndView ("/course2");
		   }
		   else
		   {
			   login = (Login)session.getAttribute("currentLogin");
		System.out.println("I am here");
		model.addAttribute("login", login);
		return new ModelAndView ("/course2");
		   }
		//return "redirect:course2.html";
	}
   @RequestMapping("/signup1")
    public ModelAndView showContacts() {
 
        return new ModelAndView("signup1", "command", new Tutor());
    } 
   @RequestMapping("/main" )
   public ModelAndView showMain(@ModelAttribute Login login, Model model, HttpSession session) {
	   
	   if(session.getAttribute("currentLogin") == null)
	   {
		   System.out.println("I am in get"); 
		   return new ModelAndView ("/main");
	   }
	   else
	   {
		   login = (Login)session.getAttribute("currentLogin");
	System.out.println("I am here");
	model.addAttribute("login", login);
	 return new ModelAndView("/main");
	
	   }
	   
	  
   } 
    
   	
   
   @RequestMapping("/Createacourse")
   public ModelAndView createCourse( @ModelAttribute Login login, Model model, HttpSession session) {
	//   login = (Login)session.getAttribute("currentLogin");
	   if(session.getAttribute("currentLogin") == null)
	   {
		   return new ModelAndView("/Createacourse" ); 
	   }
	   else{
	   login = (Login)session.getAttribute("currentLogin");
	   System.out.println("The anser here is"+ login.getEmail());
	   model.addAttribute("login", login);
       return new ModelAndView("/Createacourse" );
	   }
   } 
   @RequestMapping(value = "/Lectures", method = RequestMethod.POST )
   public ModelAndView addContac1t(@ModelAttribute Course course,Login login, Model model, HttpSession session, HttpServletRequest request) {
	   Course course1 = new Course();
	   
	   String ctitle = request.getParameter("CourseTitle");
	   String cId = request.getParameter("courseCategoryId");
	   String head = request.getParameter("Headline");
	   String keys = request.getParameter("Keywords");
	   String lang = request.getParameter("languageId");
	   course1.setCourseTitle(ctitle);
	   course1.setCourseCategoryId(cId);
	   course1.setHeadline(head);
	   course1.setKeywords(keys);
	   course1.setLanguageId(lang);
	   course = course1;
	   session.setAttribute("currentCourse", course);
	   //model.addAttribute("course", course);
		System.out.println("Course Title:"  +"\n"+ ctitle+ "\n"+ cId + "\n" + head+ "\n"+keys+"\n"+lang+ "\n");
         //      "email:" + login.getEmail());
	
		System.out.println("I am here");
		if(session.getAttribute("currentLogin") == null)
		   {
				
				System.out.println("I am in post of lectures");
			   return new ModelAndView("/Lectures" ); 
		   }
		else{
			if(session.getAttribute("currentCourse") == null)
			{
				System.out.println("i am inside if of current course");
				course = new Course();
				
				model.addAttribute("login", login);
				model.addAttribute("course", course);				   
			    return new ModelAndView("/Lectures" );
			}
			else{
				System.out.println("i am inside else of current course");
			   login = (Login)session.getAttribute("currentLogin");
			   model.addAttribute("login", login);
			   model.addAttribute("course", course);
			   System.out.println("The course title is "+ course.getCourseTitle());
			   StoreCourseDetails scd  = new StoreCourseDetails();
			   scd.storeCourse(course, login);
			   
		       return new ModelAndView("/Lectures", "coursename", course.getCourseTitle());
			   }
		}
		
		//return "redirect:course2.html";
	}
   @RequestMapping("/Lectures")
   public ModelAndView createLecture( HttpSession session) {
	   System.out.println("I am in get of lectures");
       return new ModelAndView("/Lectures");
   } 
   
  
   
   
    @RequestMapping("/index1")
    public ModelAndView showindex1() 
    {
 
    	String message = "Hello World, Spring 3.0!";
        return new ModelAndView("index1", "message", message);
    }
    @RequestMapping("/browsecourse")
    public ModelAndView browseCourse( HttpSession session,Login login, Model model) 
    {
    	login = (Login)session.getAttribute("currentLogin");
    	if(session.getAttribute("currentLogin") == null)
    	{
    		return new ModelAndView("browsecourse");
    	}
    	else
    	{
    		System.out.println("The answer in browsecourse session is "+login.getEmail());
    		model.addAttribute("login", login);
    		return new ModelAndView("browsecourselogin");
    	}
    }
    @RequestMapping("/Login")
    public ModelAndView login(SessionStatus status ) 
    {
    	status.setComplete();
    //	String message = "Hello World, Spring 3.0!";
        return new ModelAndView("Login", "command", new Login());
    }
    @RequestMapping("/Signup")
    public ModelAndView signup() 
    {
 
    //	String message = "Hello World, Spring 3.0!";
        return new ModelAndView("Signup");
    }
    
}