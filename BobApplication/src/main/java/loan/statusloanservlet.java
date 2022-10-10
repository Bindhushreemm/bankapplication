package loan;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import pojo.Customer;


@WebServlet("/statusloanservlet")
public class statusloanservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String id=request.getParameter("lid");
		int lid=Integer.parseInt(id);
		
		Customer user1=new Customer();
		HttpSession session=request.getSession();
		String status=CustomerDao.getStatus(lid);
		System.out.println("status is :"+status);
		double fees=CustomerDao.getfees(lid);
		
		
		
		
		
		
		
		
		
		out.println("<style>\n"
				+ "		p{\n"
				+ "			box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);\n"
				+ "			width:300px;\n"
				+"background-color:pink;\n"
				+"margin-left:200px;\n"
				+"font-weight:900;\n"
				+ "		}\n"
				+ "		</style>"
		);
		
		
		if(status.equals("approved") ) {
			
			RequestDispatcher rd=request.getRequestDispatcher("loanstatus.jsp?flag="+true);
			
			rd.include(request, response);
			out.println("<p align='bottom' style='font:size:140%; margin-top:25%; margin-left:750px;'>loan approved of amount "+CustomerDao.getfees(lid)+"</p>");
			
			
		}
		else {
			//out.println("check the amount");
			RequestDispatcher rd=request.getRequestDispatcher("loanstatus.jsp");
			rd.include(request, response);
			out.println("<p align='bottom' style='font:size:140%; margin-top:25%; margin-left:750px;'>loan rejected </p>");
		}
	}

}
