package net.spring3.controller;
 

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
@Controller
@SessionAttributes
public class ContactController {
	
	
	
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
	
	
	@RequestMapping(value = "/browsecourse", method = RequestMethod.POST)
    public void addContac1t(@ModelAttribute Login login, Model model) {
		System.out.println("Name:" + login.getPassword() +
                "email:" + login.getEmail());
	
		System.out.println("I am here");
		model.addAttribute("login", login);
		//return "redirect:course2.html";
	}
	@RequestMapping(value = "/course2", method = RequestMethod.POST)
    public void addContact(@ModelAttribute Login login, Model model) {
		System.out.println("Name:" + login.getPassword() +
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

       return new ModelAndView("main", "command", new Tutor());
   } 
   @RequestMapping("/Createacourse")
   public ModelAndView createCourse() {

       return new ModelAndView("/Createacourse");
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