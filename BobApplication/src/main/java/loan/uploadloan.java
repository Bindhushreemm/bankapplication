package loan;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class uploadloan
 */
@WebServlet("/uploadloan")
@MultipartConfig(maxFileSize = 16177215)  
public class uploadloan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/bank";
    private String dbUser = "root";
    private String dbPass = "password";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String firstname = request.getParameter("fname");
		 String lastname = request.getParameter("lname");
		 PrintWriter out=response.getWriter();
		 HttpSession session=request.getSession();
		 session.setAttribute("firstname", firstname);
			String firstname1=(String) session.getAttribute("userfirstname");
			if(!firstname.equals(firstname1)) {
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('enter the firstname given while creating account');");  
				out.println("</script>");
			}
		
		 
		  else {
			  
		  
	        String dob= request.getParameter("dob");
	        String rollno=request.getParameter("rno");
	        
	        String percentage =request.getParameter("percentage");
	        percentage.trim();
	        System.out.println(percentage);
	        Double percent=Double.parseDouble(percentage);
	         String edu=request.getParameter("Currenteducation");
	         
	         String cgpa=request.getParameter("cgpa");
	         double cgpa1=Double.parseDouble(cgpa);
	          
	         String collegename=request.getParameter("cname");
	         
	         String tfees=request.getParameter("tfees");
	         tfees.trim();
	         double tfees1=Double.parseDouble(tfees);
	         
	         
	         String nationality=request.getParameter("nationality");
	         
	         
	        
	        String address = request.getParameter("address");
	        String email= request.getParameter("email");
	        String phono = request.getParameter("phono");
	        String pan= request.getParameter("pan");
	        String adhar = request.getParameter("adhar");
	        String status="pending";
	        
	        
	        Date date = new Date();
	        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy");
	         String str = formatter.format(date);
	       
	        
	         
	        InputStream inputStream = null; // input stream of the upload file
	        InputStream inputStream1 = null;
	        InputStream inputStream2 = null;
	         
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("feephoto");
	        Part filePart1 = request.getPart("panphoto");
	        Part filePart2 = request.getPart("adharphoto");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
	        
	        if (filePart1 != null) {
	            // prints out some information for debugging
	            System.out.println(filePart1.getName());
	            System.out.println(filePart1.getSize());
	            System.out.println(filePart1.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream1= filePart1.getInputStream();
	        }
	        
	        if (filePart2 != null) {
	            // prints out some information for debugging
	            System.out.println(filePart2.getName());
	            System.out.println(filePart2.getSize());
	            System.out.println(filePart2.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream2 = filePart2.getInputStream();
	        }
	         
	        Connection conn = null; // connection to the database
	        String message = null;  // message will be sent back to client
	         
	        try {
	            // connects to the database
	            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
	 
	            // constructs SQL statement
	            String sql = "INSERT INTO userinfo (firstname,lastname,dob,rollno,percentage,edu,cgpa,collegename,tfees,nationality,address,email,phono,pan,adhar,tfeesphoto,panphoto,adharphoto,currentdate,status) values (?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            
				
	            statement.setString(1, firstname);
	            statement.setString(2, lastname);
	            statement.setString(3, dob);
	            statement.setString(4, rollno);
	            statement.setDouble(5, percent);
	            statement.setString(6, edu);
	            statement.setDouble(7, cgpa1);
	            statement.setString(8,collegename);
	            statement.setDouble(9, tfees1);
	            statement.setString(10,nationality);
	            statement.setString(11,address);
	            statement.setString(12,email);
	            statement.setString(13,phono);
	            statement.setString(14,pan);
	            statement.setString(15, adhar);
	            statement.setString(19,str);
	            statement.setString(20, status);
	            
	            
	             
	            if (inputStream != null) {
	                // fetches input stream of the upload file for the blob column
	                statement.setBlob(16, inputStream);
	                
	               
	            }
	            if (inputStream1 != null) {
	                // fetches input stream of the upload file for the blob column
	                statement.setBlob(17, inputStream1);
	                
	               
	            }
	            if (inputStream2 != null) {
	                // fetches input stream of the upload file for the blob column
	                statement.setBlob(18, inputStream2);
	                
	               
	            }
	            
	            
	        	out.println("<style>\n"
	    				+ "		p{\n"
	    				+ "			box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);\n"
	    				+ "			width:600px;\n"
	    				+"background-color:white;\n"
	    				+"height:160px;"
	    				+"margin-left:570px;\n"
	    				
	    				+"font-size:40px;\n"
	    				+"font-weight:1000;\n"
	    				+ "		}\n"
	    				+ "		</style>"
	    		);
	            String sql1="select Max(id) from userinfo ";
	            ResultSet rs=statement.executeQuery(sql1);
	            rs.next();
	            int id=rs.getInt(1);
	            int id1=id+1;
	            // sends the statement to the database server
	            RequestDispatcher rd=request.getRequestDispatcher("loanstatusdisplay.jsp?flag="+true);
				rd.include(request, response);
				out.println("<p align='bottom' style='font:size:140%; margin-top:10%;'>"+"Loan succesfully applied and your loan transaction id is:"+id1+"</p>");
	            int row = statement.executeUpdate();
	            if (row > 0) {
	                message = "File uploaded and saved into database";
	            }
	        } catch (SQLException ex) {
	           
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

