package net.spring3.controller;
 
import net.spring3.form.Contact;
 
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
@SessionAttributes
public class ContactController {
 
    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public String addContact(@ModelAttribute("contact")
                            Contact contact, BindingResult result) {
 
        System.out.println("First Name:" + contact.getFirstname() +
                    "Last Name:" + contact.getLastname());
 
        return "redirect:contacts.html";
    }
 
    @RequestMapping("/contacts")
    public ModelAndView showContacts() {
 
        return new ModelAndView("contact", "command", new Contact());
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
        return new ModelAndView("Login");
    }
    @RequestMapping("/Signup")
    public ModelAndView signup() 
    {
 
    //	String message = "Hello World, Spring 3.0!";
        return new ModelAndView("Signup");
    }
}