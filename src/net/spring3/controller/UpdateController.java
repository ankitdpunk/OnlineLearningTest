package net.spring3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
 
import net.spring3.controller.UploadItem;
 
@Controller
@RequestMapping(value = "/uploadForm")
public class UpdateController
{
  @RequestMapping(method = RequestMethod.GET)
  public String getUploadForm(Model model)
  {
	System.out.println("Inside get of uplodForm");
    model.addAttribute(new UploadItem());
    return "/uploadForm";
  }
 
  @RequestMapping(method = RequestMethod.POST)
  public String create(UploadItem uploadItem, BindingResult result)
  {
	  System.out.println("Inside post of uplodForm");
    
 
    // Some type of file processing...
    System.err.println("-------------------------------------------");
    System.err.println("Test upload: " + uploadItem.getName());
    System.err.println("Test upload: " + uploadItem.getFileData().getOriginalFilename());
    System.err.println("-------------------------------------------");
 
    return "/uploadForm";
  }
}