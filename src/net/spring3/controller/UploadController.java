package net.spring3.controller;
import net.spring3.form.*;
import javax.servlet.ServletContext;
import java.io.*;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;

import org.apache.commons.fileupload.FileItem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
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
public class UploadController extends javax.servlet.http.HttpServlet
{
  @RequestMapping(method = RequestMethod.GET)
  public String getUploadForm(Model model)
  {
	System.out.println("Inside get of uplodForm");
    model.addAttribute(new UploadItem());
    return "/uploadForm";
  }
 
  @RequestMapping(method = RequestMethod.POST)
  public String create(UploadItem uploadItem,Course course, Model model, Login login, HttpSession session, HttpServletRequest request) throws Exception
  {
	  Course course1 = new Course();
	  String ctitle,type =null;
	  
	  System.out.println("Inside post of uplodForm");
	  login = (Login)session.getAttribute("currentLogin");
	  
/*	  course1 = (Course)session.getAttribute("coursename");
	  	 ctitle = course1.getCourseTitle(); */
	   	
	  course = (Course)session.getAttribute("currentCourse");

	  
	  ctitle = course.getCourseTitle(); 
	  int courseId = course.getCid();
	  CreateCourse cc = new CreateCourse();
	  int no = cc.countLectures(courseId);
	  no  = no  +1;
	  String lectnum = new Integer(no).toString();
	  String cournum = new Integer(courseId).toString();
	  String lectname = "Course"+cournum+"Lecture"+lectnum;
	  
	
	 // String userDir = "F://BmTech//Users//"+login.getEmail();
	   
			  
	  //String ctitle = course.getCourseTitle();
			
	//  course = (Course)session.getAttribute("currentCourse");
	  
	  System.out.println("The session in post"+ login.getEmail());
 
    // Some type of file processing...
    System.err.println("-------------------------------------------");
    System.err.println("Test upload: " + uploadItem.getName());
    System.err.println("Test upload: " + uploadItem.getFileData().getOriginalFilename());
    System.err.println("-------------------------------------------");
        
    try {
        MultipartFile file = uploadItem.getFileData();
        MultipartFile file1 = uploadItem.getFileData();
       // File f = (File)file;
        String fileName = null, fileUrl = null;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        
        if (file.getSize() > 0) {
                inputStream = file.getInputStream();
                if (file.getSize() > 1000000000) {
                        System.out.println("File Size:::" + file.getSize());
                        return "/uploadForm";
                }
                System.out.println("size::" + file.getSize());
             //   String userDir = getInitParameter("") + "/" + login.getEmail();
               String  userDir = request.getRealPath("/")+login.getEmail();
              //  String  userDir = login.getEmail();
                
        		String userUrl = userDir+"//"+lectname;
        		String userLink = login.getEmail()+ "/"+ lectname;
        		userUrl = userUrl.replaceAll("//", "/");
        		
        		fileName = userUrl+file.getOriginalFilename();
        		fileName = fileName.replaceAll(" ", "");
        		userLink = userLink+file.getOriginalFilename();
        		userLink = userLink.replaceAll(" ", "");
        		
        		GetType gtype = new GetType();
        		type = gtype.returnType(userLink);
        		
        		if(type.equals("pdf"))
        		{
        			System.out.println("Inside the pdf convertor call");
        			File f = new File(fileName);
        			f.createNewFile();
        			FileOutputStream fos = new FileOutputStream(f); 
        			fos.write(file.getBytes());
        			fos.close(); //setting the value of fileUploaded variable
        			SwfCreator swf = new SwfCreator();
        			f = swf.convertToSWF(f);
        			 
        			
        		}
        		
        		userUrl=fileName;
        		System.out.println("The user url is: "+ userUrl);
          new File(userDir).mkdir();
          if(session.getAttribute("currentLogin") != null)
          {
        	  StoreLecture sl =  new StoreLecture();
        	  sl.storeLecture(ctitle, userLink, login.getEmail(), type);
          } 
         
                
             //   fileName = request.getRealPath("") + "/images/"
             //                   + file.getOriginalFilename();
              //  fileName = "F://BmTech//Users//"+login.getEmail()+"//" + file.getOriginalFilename();
                
                outputStream = new FileOutputStream(fileName);
              //  System.out.println("fileName:" + f.getOriginalFilename()+ fileName);
                request.setAttribute("fileName", fileName);
                String fm = (String)request.getAttribute("fileName");
                System.out.println("The (String)request.getAttribute is "+ fm);
                
          

                int readBytes = 0;
                byte[] buffer = new byte[10000];
                while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
                        outputStream.write(buffer, 0, readBytes);
                }
                outputStream.close();
                inputStream.close();
        }
        model.addAttribute("login", login);

        // ..........................................
      //  session.setAttribute("uploadFile", file.getOriginalFilename());
} catch (Exception e) {
        e.printStackTrace();
}
     return "/Lectures";
  }
}