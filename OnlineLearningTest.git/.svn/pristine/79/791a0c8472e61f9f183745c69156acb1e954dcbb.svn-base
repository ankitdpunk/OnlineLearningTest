package net.spring3.controller;
 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.spring3.validator.SignupValidator;
import org.springframework.ui.Model;
import net.spring3.form.*;
 
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.support.SessionStatus;
/*@Controller
@SessionAttributes */
public class Contct {
	
	
	
/*SignupValidator signupValidator;
	
	@Autowired
	public ContactController(SignupValidator signupValidator){
		this.signupValidator = signupValidator; 
	} */
	@RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public String addContact(@ModelAttribute Tutor tutor, Model model) {
		System.out.println("Name:" + tutor.getName() +
                "email:" + tutor.getEmail());
		
		System.out.println("I am here");
		model.addAttribute("tutor", tutor);
 
      /*   signupValidator.validate(tutor, result);
           if (result.hasErrors()) {
   			//if validator failed
   		//	return "redirect:Log.html";
   		} else {
   			status.setComplete();
   			//form success
   			 
   		}*/
		return "redirect:browsecourse.html";
        
    } 
	
	
	@RequestMapping(value = "/main", method = RequestMethod.POST)
    public ModelAndView addLogin(@ModelAttribute Login login, Model model) {
		System.out.println("Password:" + login.getPassword() +"\n"+
                "email:" + login.getEmail());
		
		
	
		System.out.println("I am in addContact1");
		System.out.println(login.getEmail());
		model.addAttribute("login", login);
		return new ModelAndView("/main");
		
	//	return new ModelAndView("main");
		//return "redirect:course2.html";
	}
	@RequestMapping(value = "/course2", method = RequestMethod.POST)
    public void addContact(@ModelAttribute Login login, Model model) {
		System.out.println("password:" + login.getPassword() +
                "email:" + login.getEmail());
	
		System.out.println("I am here");
		model.addAttribute("login", login);
		
		//return "redirect:course2.html";
	}
    
   @RequestMapping("/signup1")
    public ModelAndView showContacts() {
 
        return new ModelAndView("signup1", "command", new Tutor());
    } 
   @RequestMapping("/main")
   public ModelAndView showMain() {
	   
	   
	   return new ModelAndView("/main");
   } 
   @RequestMapping("/Createacourse")
   public ModelAndView createCourse(Model model) {
	   

       return new ModelAndView("/Createacourse");
   } 
   @RequestMapping(value = "/Lectures", method = RequestMethod.POST )
   public ModelAndView addContac1t(@ModelAttribute Course course, Model model, HttpSession session, HttpServletRequest request) {
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
	   //model.addAttribute("course", course);
		System.out.println("Course Title:"  +"\n"+ ctitle+ "\n"+ cId + "\n" + head+ "\n"+keys+"\n"+lang+ "\n");
         //      "email:" + login.getEmail());
	
		System.out.println("I am here");
		return new ModelAndView("/Lectures");
		//return "redirect:course2.html";
	}
   @RequestMapping("/Lectures")
   public ModelAndView createLecture() {

       return new ModelAndView("/Lectures");
   } 
    @RequestMapping("/course2")
    public ModelAndView showIndex() {
    	
    	
    	String message = "Hello World, Spring 3.0!";
        return new ModelAndView("course2", "message", message); 
    }
    @RequestMapping("/index1")
    public ModelAndView showindex1() 
    {
 
    	String message = "Hello World, Spring 3.0!";
        return new ModelAndView("index1", "message", message);
    }
    @RequestMapping("/browsecourse")
    public ModelAndView browseCourse() 
    {
 
    //	String message = "Hello World, Spring 3.0!";
        return new ModelAndView("browsecourse");
    }
    @RequestMapping("/Login")
    public ModelAndView login() 
    {
 
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