package sampleadmin;


import java.sql.Connection;
import java.sql.DriverManager;

public class approvalutil {
public static Connection getConnection() {
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "password");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return con;
	}


}
