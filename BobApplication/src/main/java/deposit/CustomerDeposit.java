package deposit;

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


@WebServlet("/CustomerDeposit")
public class CustomerDeposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String mpin=request.getParameter("mpin");
		String damount=request.getParameter("damount");
		Double d=Double.parseDouble(damount);
		Customer user1=new Customer();
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		System.out.println("username is equal to:"+username);
		String mpin1=CustomerDao.getmpin(user1, username);
		System.out.println("the customer deposit mpin is:"+mpin1);
		
		
		
		out.println("<style>\n"
				+ "		p{\n"
				+ "			box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);\n"
				+ "			width:200px;\n"
				+"background-color:green;\n"
				+"margin-left:870px;\n"
				
				+"font-weight:1000;\n"
				+ "		}\n"
				+ "		</style>"
		);
		
		if(mpin.equals(mpin1)) {
			CustomerDao.depositUser(user1, d, mpin);
			request.getSession().setAttribute("credentials", "deposit succesfull");
			RequestDispatcher rd=request.getRequestDispatcher("deposit.jsp");
			
			rd.include(request, response);
			out.println("<p align='bottom' style='font:size:140%; margin-top:30%;'>"+"deposit succesfull"+"</p");
			
		}
		else {
			
RequestDispatcher rd=request.getRequestDispatcher("deposit.jsp");
			
			rd.include(request, response);
			out.println("<p align='bottom' style='font:size:140%; margin-top:30%;'>"+"deposit failed"+"</p");
		}
		
	}

}
