package net.spring3.controller;

public class GetType {
	public String returnType(String lectname)
	{
		String type=null;
		if(lectname.contains(".mp4") || lectname.contains(".flv") || lectname.contains(".avi") || lectname.contains(".mpeg"))
		{
			type= "video";
		}
		else if(lectname.contains(".mp3"))
		{
			type= "audio";
		
		}
		else if(lectname.contains(".pdf"))
		{
			type = "pdf";
		}
		else if(lectname.contains(".jpg") || lectname.contains(".jpeg")|| lectname.contains("png") )
		{
			type = "pic";
		}
		else if(lectname.contains(".txt"))
		{
			type = "text";
		}
		else type = "other";
		return type;
		
	}

}
