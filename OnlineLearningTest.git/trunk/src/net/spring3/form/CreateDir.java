package net.spring3.form;
import java.io.*;

public class CreateDir {
	public static void main(String arg []) throws IOException
	{
		String userDir = "F://admin";
		new File(userDir).mkdir();
	}

}
