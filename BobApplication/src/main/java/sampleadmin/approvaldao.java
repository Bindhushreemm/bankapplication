package sampleadmin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import util.CustomerUtil;

public class approvaldao {
         public static int saveApproval(approval user) {
        	 Statement stmt = null;
     		try {
     			
     			String sql = "insert into approval(name,salary,status) values('"+user.getName()+"',"+user.getSalary()+",'"+user.getStatus()+"')";
     			
     			stmt = approvalutil.getConnection().createStatement();
     			
     			return stmt.executeUpdate(sql);
     		}
     		catch(Exception e) {
     			e.printStackTrace();
     			
     			return 0;
     		}
	   }

		public static List<approval> getAllStatement() {
			
			List<approval> list = new ArrayList<approval>();
			Statement stmt = null;
			
			try {
				String sql = "select * from approval";
				stmt = CustomerUtil.getConnection().createStatement();
				ResultSet rs = stmt.executeQuery(sql);
			//	rs.next();
				while(rs.next()) {
					approval user=new approval();
					user.setName(rs.getString(1));
					user.setSalary(rs.getDouble(2));
					user.setStatus(rs.getString(3));
					
					list.add(user);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			
			}
			return list;
		}

		
		public static List<approval> getAllloaninfo(){
			List<approval> list = new ArrayList<approval>();
			Statement stmt = null;
			
			try {
				String sql = "select * from userinfo";
				stmt = CustomerUtil.getConnection().createStatement();
				ResultSet rs = stmt.executeQuery(sql);
			//	rs.next();
				while(rs.next()) {
					approval user=new approval();
					user.setId(rs.getInt(1));
					user.setFirstname(rs.getString(2));
					user.setDob("dob");
					user.setRollno("rno");
					user.setPercentage(rs.getDouble("percentage"));
					user.setEdu(rs.getString("edu"));
					user.setCgpa(rs.getDouble("cgpa"));
					user.setCollegename(rs.getString("collegename"));
					user.setTfees(rs.getDouble("tfees"));
					user.setNationality(rs.getString("nationality"));
					
					
					user.setAddress("address");
					user.setAdhar(rs.getString("adhar"));
					user.setPan(rs.getString("pan"));
					user.setStatus(rs.getString("status"));
					
					
					list.add(user);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			
			}
			return list;
		}

		public static void updateApproval(String firstname) {
			// TODO Auto-generated method stub
			String sql=null;
			String sql1=null;
			Statement st=null;
			try {
				
				System.out.println("the status is:"+firstname);
				sql="update userinfo set status='approved' where firstname='"+firstname+"'";
				
				
				st = approvalutil.getConnection().createStatement();
				st.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

		public static void deleteApproval(String firstname) {
			String sql=null;
			Statement st=null;
			try {
				System.out.println("the status is:"+firstname);
				sql="update userinfo set status='rejected' where firstname='"+firstname+"'";
				
				
				st = approvalutil.getConnection().createStatement();
				st.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		

}
