package adminlogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.util.Util;

import util.CustomerUtil;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String user = request.getParameter("usr");
			String pass = request.getParameter("pwd");
			
			
		AdminPojo ob = new AdminPojo();
			ob.setUsername(user);
			ob.setPassword(pass);
			
	
			
			Statement st=CustomerUtil.getConnection().createStatement();
			String sql = "select username ,password from admin where username='"+ob.getUsername()+"' and password = '"+ob.getPassword()+"'";		
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()) {
				if(user.equals("admin") && pass.equals("admin@123")) {
					RequestDispatcher rd = request.getRequestDispatcher("approvallist");
					rd.forward(request, response);
				
				}
				else {
					out.println("the details are inccorrect");
				//	RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
					//rd.forward(request, response);
					
				}

			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
				rd.include(request, response);
				out.println("");
				out.println("<p style='margin-top:600px;'><center><font color = red> Invalid credentials </font></center>");
			}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		
	}

}
