package sampleadmin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




/**
 * Servlet implementation class approvallist
 */
@WebServlet("/approvallist")
public class approvallist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		approval user=new approval();
		
		
		out.print("<div style='background-color:#AA336A; color:black; align:center;'><h1 style='text-align:center; font-size:100px;'>Loans</h1></div>");
		out.println("<body  style=' background: linear-gradient(to bottom, #ee9ca7 50%, #f7bb97 50%);\n"
				+ "  background-repeat: no-repeat;\n"
				+ "  background-attachment: fixed;\n"
				+ "  background-size: 100% 100%; '></body>");
		
		
		
		
		 out.print("<table border='1px solid black'  width='80%' align='center' color='white' style='margin-top:180px; border:1px solid black; box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.78);'> ");  
	        
	        
	      approvaldao obj=new approvaldao();
	        List<approval> list=new ArrayList<approval>();
	        list=approvaldao.getAllloaninfo();
	       // List<Manager> list=ManagerDao.getAllEmployees();  
	        out.print("<tr style='background-color:pink;'><th>Name</th><th>dob</th><th>rollno</th><th>percentage</th><th>edu</th><th>cgpa</th><th>collegename</th><th>tutionfees</th><th>Nationality</th><th>Pan</th><th>Adhar</th><th>Status</th><th>Documents</th><th>fees document</th><th>Documents</th><th colspan='2'>Action</th></tr>");  
	        //out.println(list);
	        for(approval e:list){
	        	
	        	 
	            out.print("<tr style='background-color:white;'><td>"+e.getFirstname()+"</td><td>"+e.getDob()+"</td><td>"+e.getRollno()+"</td><td>"+e.getPercentage()+"</td><td>"+e.getEdu()+"</td><td>"+e.getCgpa()+"</td><td>"+e.getCollegename()+"</td><td>"+e.getTfees()+"</td><td>"+e.getNationality()+"</td><td>"+e.getPan()+"</td><td>"+e.getAdhar()+"</td><td>"+e.getStatus()+"</td><td>"+"<button><a href='viewimage.jsp'>view adhar</a></button>"+"</td><td>"+"<button><a href='viewfeesimage.jsp'>view fees reciept</a></button>"+"</td><td>"+"<button><a href='viewpancardimage.jsp'>view pan card</a></button>"+"</td><td>"+"<button><a href='buttonapproval'>approval</a></button>"+"</td><td>"+"<button><a href='buttonreject'>reject</a></button>"+"</td></tr>" ) ;   
	        }
	       
	      
	        out.print("</table>");  
	        //out.println("<img src='obj.getimages()'>");
	          
	        out.close(); 
		
	}


	

}
