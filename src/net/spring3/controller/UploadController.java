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
@RequestMapping(value = "/uploadForm")
public class UploadController
{
  @RequestMapping(method = RequestMethod.GET)
  public String getUploadForm(Model model)
  {
	System.out.println("Inside get of uplodForm");
    model.addAttribute(new UploadItem());
    return "/uploadForm";
  }
 
  @RequestMapping(method = RequestMethod.POST)
  public String create(UploadItem uploadItem,Course course, BindingResult result, Login login, HttpSession session, HttpServletRequest request) throws Exception
  {
	  
	  System.out.println("Inside post of uplodForm");
	  login = (Login)session.getAttribute("currentLogin");
	  course = (Course)session.getAttribute("currentCourse");
	  
	  String userDir = "F://BmTech//Users//"+login.getEmail();
	  String userUrl = userDir+"//"+uploadItem.getFileData().getOriginalFilename(); 
			  userUrl = userUrl.replaceAll("//", "/");
	  String ctitle = course.getCourseTitle();
	  new File(userDir).mkdir();
	  if(session.getAttribute("currentLogin") != null)
	  {
		  StoreLecture sl =  new StoreLecture();
		  sl.storeLecture(ctitle, userUrl, login.getEmail());
	  }
	  course = (Course)session.getAttribute("currentCourse");
	  
	  System.out.println("The session in post"+ login.getEmail());
 
    // Some type of file processing...
    System.err.println("-------------------------------------------");
    System.err.println("Test upload: " + uploadItem.getName());
    System.err.println("Test upload: " + uploadItem.getFileData().getOriginalFilename());
    System.err.println("-------------------------------------------");
        
    try {
        MultipartFile file = uploadItem.getFileData();
        String fileName = null;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        if (file.getSize() > 0) {
                inputStream = file.getInputStream();
                if (file.getSize() > 1000000000) {
                        System.out.println("File Size:::" + file.getSize());
                        return "/uploadForm";
                }
                System.out.println("size::" + file.getSize());
             //   fileName = request.getRealPath("") + "/images/"
             //                   + file.getOriginalFilename();
                fileName = "F://BmTech//Users//"+login.getEmail()+"//" + file.getOriginalFilename();
                outputStream = new FileOutputStream(fileName);
                System.out.println("fileName:" + file.getOriginalFilename());

                int readBytes = 0;
                byte[] buffer = new byte[10000];
                while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
                        outputStream.write(buffer, 0, readBytes);
                }
                outputStream.close();
                inputStream.close();
        }

        // ..........................................
      //  session.setAttribute("uploadFile", file.getOriginalFilename());
} catch (Exception e) {
        e.printStackTrace();
}
     return "/uploadForm";
  }
}