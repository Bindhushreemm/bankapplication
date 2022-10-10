package statement;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Download
 */
@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String fileName = "pdf-sample.pdf";
	        FileInputStream fileInputStream = null;
	        OutputStream responseOutputStream = null;
	        try
	        {
	            String filePath = request.getServletContext().getRealPath("/WEB-INF/resources/")+ fileName;
	            File file = new File(filePath);
	            
	            String mimeType = request.getServletContext().getMimeType(filePath);
	            if (mimeType == null) {        
	                mimeType = "application/octet-stream";
	            }
	            response.setContentType(mimeType);
	            response.addHeader("Content-Disposition", "attachment; filename=" + fileName);
	            response.setContentLength((int) file.length());
	 
	            fileInputStream = new FileInputStream(file);
	            responseOutputStream = response.getOutputStream();
	            int bytes;
	            while ((bytes = fileInputStream.read()) != -1) {
	                responseOutputStream.write(bytes);
	            }
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	        finally
	        {
	            fileInputStream.close();
	            responseOutputStream.close();
	        }
	}

}
