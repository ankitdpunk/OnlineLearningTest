package net.spring3.controller;



	import java.io.*;
	import org.springframework.web.multipart.MultipartFile;
	public class CreateThumbnail {
		
		
		public static void main(String args[]) throws IOException
		{
			File file = new File("C:\\hello.mp4");			
			convertToSWF(file);
		}
		
		public static void convertToSWF(File file) throws IOException{
		
		   // String oldFilePath = file.getAbsolutePath();
		    //change the extension to .swf
		    
		    
		    //calling pdf2swf to convert our file.pdf to file.swf

		    String[] command =  {"F:\\Online Learning Resources\\ffmpeg-r13242-gpl-static-win32\\bin\\ffmpeg", "-i", "C:\\hello.mp4", "-an", "-ss", "00:00:03", "-an", "-r", "l", "-vframes", "1", "-y", "C:\\d.jpg"};
		//  String command  = "cmd /c dir";         
		    
		    Process p = Runtime.getRuntime().exec(command);
		    System.out.println("Just above while");
		    
		    BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
		    System.out.println(in);
		    String line = in.readLine();
		    System.out.println(line);
		    while ((line = in.readLine()) != null) {  
		    	 System.out.println(line);
		 //       log.info(line);  
		    } 
		    System.out.println("--------------------------------");
		    System.out.println("Conversion finish");
		    
		    
		    
		}


	}

