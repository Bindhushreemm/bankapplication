package loginservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Customer;
import util.CustomerUtil;


@WebServlet("/CustomerLogin")
public class CustomerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String user=request.getParameter("usr");
		String pass=request.getParameter("pwd");
		Customer user1=new Customer();
        

		
		boolean flag=false;
		try {
			Statement st=CustomerUtil.getConnection().createStatement();
			String sql="select username,password from register";
			ResultSet rs=st.executeQuery(sql);
			
			while(rs.next()) {
				if(rs.getString(1).equals(user) && rs.getString(2).equals(pass)) {
					//out.println("login success");
					//request.setAttribute("message", "valid"); 
					//request.getRequestDispatcher("Login.html").forward(request,response);
					
					 HttpSession session=request.getSession();
					  session.setAttribute("username", user);
					
					RequestDispatcher rd=request.getRequestDispatcher("options.jsp");
					//out.println("valid");
					rd.forward(request, response);
					flag=true;
					///break;
				}
			}
				if(flag==false){
					request.getSession().setAttribute("credentials", "credentialsnotexist");
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
				// out.println("<p align = 'bottom'>insvalid</p>");

				}
				
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
	
	}

}
