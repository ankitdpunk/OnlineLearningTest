package net.spring3.controller;

import java.io.*;

public class DocConvertor {
	
	
	private static File convertToSWF(File file) throws IOException{
	    String oldFilePath = file.getAbsolutePath();
	    //change the extension to .swf
	    String newFilePath = oldFilePath.substring(0, oldFilePath.lastIndexOf(".")) + ".swf";
	    
	    //calling pdf2swf to convert our file.pdf to file.swf

	    String[] command = { "pdf2swf", file.getAbsolutePath(), "-o", newFilePath, "-f",
	            "-T 10", "-t", "-G"};
	    
	    Process p = Runtime.getRuntime().exec(command);
	    
	    BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));  
	    String line = null;  
	    while ((line = in.readLine()) != null) {  
	 //       log.info(line);  
	    } 
	    
	    return new File(newFilePath);
	}


}
