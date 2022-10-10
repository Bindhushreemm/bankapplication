package sampleadmin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/approvalstatus")
public class approvalstatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("hesru");
		String salary=request.getParameter("hesrugalu");
		String status="pending";
		double sal=Double.parseDouble(salary);
		approval user1=new approval();
		user1.setName(name);
		user1.setSalary(sal);
		user1.setStatus(status);
		approvaldao.saveApproval(user1);
	}

	
	

}
