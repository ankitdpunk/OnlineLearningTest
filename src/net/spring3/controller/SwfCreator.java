package net.spring3.controller;

import java.io.*;
import org.springframework.web.multipart.MultipartFile;
public class SwfCreator {
	
	
	public static void main(String args[]) throws IOException
	{
		File file = new File("c:\\Service.pdf");
		
		File f = convertToSWF(file);
	}
	
	public static File convertToSWF(File file) throws IOException{
	
	    String oldFilePath = file.getAbsolutePath();
	    //change the extension to .swf
	    String newFilePath = oldFilePath.substring(0, oldFilePath.lastIndexOf(".")) + ".swf";
	    
	    //calling pdf2swf to convert our file.pdf to file.swf

	    String[] command = { "C:\\Program Files\\SWFTools\\pdf2swf", file.getAbsolutePath(), "-o", newFilePath, "-f",
	            "-T 10", "-t", "-G"};
	    
	    Process p = Runtime.getRuntime().exec(command);
	    System.out.println("Just above while");
	    
	    BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));  
	    String line = null;  
	    while ((line = in.readLine()) != null) {  
	    	 System.out.println(line);
	 //       log.info(line);  
	    } 
	    System.out.println("--------------------------------");
	    System.out.println("Conversion finish");
	    
	    
	    return new File(newFilePath);
	}


}
