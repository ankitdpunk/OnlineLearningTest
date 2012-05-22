package net.spring3.controller;
import net.spring3.controller.*;
import net.spring3.form.Login;

public class Check {
	
	public static void main(String args[])
	{
	Login logs =  new Login();
	logs.setEmail("admin22");
	logs.setPassword("admin");
	LoginValidator lv = new LoginValidator ();
	String response =lv.validate(logs);
	System.out.println("The response is " + response);
	}
	
	

}
