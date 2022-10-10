package registrationpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.CustomerDao;


@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)  
public class uploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/bank";
    private String dbUser = "root";
    private String dbPass = "password";
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // gets values of text fields
        String name = request.getParameter("name");
        String dob= request.getParameter("dob");
        String address = request.getParameter("address");
        String email= request.getParameter("email");
        String phono = request.getParameter("phono");
        String pan= request.getParameter("pan");
        String adhar = request.getParameter("adhar");
        String type= request.getParameter("type");
        String balance= request.getParameter("balance");
        double b=Double.parseDouble(balance);
        String username= request.getParameter("usr");
        PrintWriter out=response.getWriter();
        if(CustomerDao.getusernameintable(username)) {
        	System.out.println("incorrect data");
        	out.println("<script type=\"text/javascript\">");
        	   out.println("alert('Username already exists');");
        	   out.println("location='register.jsp';");
        	   out.println("</script>");        	 
       }
        else {
        	  String password= request.getParameter("psw");
              String mpin= request.getParameter("mpin");
              int accno=1;
              HttpSession session=request.getSession();
      		  session.setAttribute("userfirstname", name);
               
              InputStream inputStream = null; // input stream of the upload file
               
              // obtains the upload file part in this multipart request
              Part filePart = request.getPart("photo");
              if (filePart != null) {
                  // prints out some information for debugging
                  System.out.println(filePart.getName());
                  System.out.println(filePart.getSize());
                  System.out.println(filePart.getContentType());
                   
                  // obtains input stream of the upload file
                  inputStream = filePart.getInputStream();
              }
               
              Connection conn = null; // connection to the database
              String message = null;  // message will be sent back to client
               
              try {
                  // connects to the database
                  DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                  conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
       
                  // constructs SQL statement
                  String sql = "INSERT INTO register (name,dob,address,email,phono,pan,adhar,type,balance,username,password,mpin,photo) values (?, ?, ?,?,?,?,?,?,?,?,?,?,?)";
                  PreparedStatement statement = conn.prepareStatement(sql);
                  
      			
                  statement.setString(1, name);
                  statement.setString(2, dob);
                  statement.setString(3, address);
                  statement.setString(4, email);
                  statement.setString(5, phono);
                  statement.setString(6, pan);
                  statement.setString(7, adhar);
                  statement.setString(8, type);
                  statement.setDouble(9, b);
                  statement.setString(10, username);
                  statement.setString(11, password);
                  statement.setString(12, mpin);
                   
                  if (inputStream != null) {
                      // fetches input stream of the upload file for the blob column
                      statement.setBlob(13, inputStream);
                     
                  }
       
                  // sends the statement to the database server
                  RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
      			rd.forward(request, response);
                  int row = statement.executeUpdate();
                  if (row > 0) {
                      message = "File uploaded and saved into database";
                  }
        }
      
         catch (SQLException ex) {
           
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
           
        }
    }

	}
}

