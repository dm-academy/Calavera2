package sss;
import java.util.Scanner;

class Average
{
     public static void main(String args[])
	
     {
	
          int n;
          double res=0;
	
	  Scanner reader=new Scanner(System.in);
 
	  System.out.println("Enter how many numbers to calculate the avrage ");
	   
          n=reader.nextInt();
 
	  int a[]=new int[n];
 
	  System.out.println("Enter   "+n+"  numbers");
    	       
          for(int i=0;i<n;i++)
 	       a[i]=(int) reader.nextDouble();
 
	  res=Average.CalAvg(a,n); 
 	 	    
  	  System.out.println("The average is " +res/n);
 
     }
	
       static double CalAvg(int  a[],int n)
       {
	   double res=0;
 
	   for(int i=0;i<n;i++)
	       res =res+a[i];
 
	   return res;
        }
}
