import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

public class Use {
    public static void main(String[] args)
       {
             System.out.println(".csv File is used");
       	  System.out.println("Enter the File Name");
             Scanner sc=new Scanner(System.in);
             String fileName=sc.nextLine();
             
	try {
		FileReader fileReader =new FileReader("D:\\" + fileName);
		System.out.println(fileReader);
	} 
	
	catch (FileNotFoundException e) 
	{
		e.printStackTrace();
	
}
	}
          	
      }
