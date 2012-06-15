package net.spring3.controller;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UploadItem
{
  private String name;
  private String description;
  public String getDescription() {
	  System.out.println("The value of descrption in get is: "+ description);
	return description;
}

public void setDescription(String description) {
	System.out.println("The value of descrptio is: "+ description);
	this.description = description;
}

private CommonsMultipartFile fileData;
 
 
  public String getName()
  {
	  System.out.println("I am inside getName"+ name);
    return name;
  }
 
  public void setName(String name)
  {
	  System.out.println("I am inside setName "+ name);
    this.name = name;
  }
 
  public CommonsMultipartFile getFileData()
  {
    return fileData;
  }
 
  public void setFileData(CommonsMultipartFile fileData)
  {
    this.fileData = fileData;
  }
}