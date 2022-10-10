package updation;

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

/**
 * Servlet implementation class addressUpdate
 */
@WebServlet("/addressUpdate")
public class addressUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String mpin=request.getParameter("mpin");
		String address=request.getParameter("aname");
		
		Customer user1=new Customer();
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		System.out.println("username is equal to:"+username);
		String mpin1=CustomerDao.getmpin(user1, username);
		System.out.println(mpin1);
		
		if(mpin.equals(mpin1) ) {
			CustomerDao.UpdateAddressUser(user1, mpin,address);
			
//			request.getSession().setAttribute("credentials", "credentialsnotexist");
			RequestDispatcher rd=request.getRequestDispatcher("updateaddress.jsp?flag="+true);
			rd.include(request, response);
			out.println("<p align='bottom' style='font:size:140%; margin-top:25%; margin-left:950px;'>updation is Success</p>");
			
		}
		else {
			//out.println("check the amount");
			RequestDispatcher rd=request.getRequestDispatcher("updateaddress.jsp");
			rd.include(request, response);
			out.println("<p align='bottom' style='font:size:140%; margin-top:25%; margin-left:250px;'>updation  is failed</p>");
		}
	}

}
