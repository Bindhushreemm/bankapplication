package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pojo.Customer;
import util.CustomerUtil;



public class CustomerDao {
	public static int saveUser(Customer user) {
		Statement stmt = null;
		try {
			String sql = "insert into signin(name,address,email,phono,type,amount,username,password) values('"+user.getName()+"','"+user.getAddress()+"','"+user.getEmail()+"','"+user.getPhono()+"','"+user.getType()+"',"+user.getAmount()+",'"+user.getUsername()+"','"+user.getPassword()+"')";
			
			stmt = CustomerUtil.getConnection().createStatement();
			
			return stmt.executeUpdate(sql);
		}
		catch(Exception e) {
			e.printStackTrace();
			
			return 0;
		}
	}

	public static int saveLoginUser(Customer user1) {
		Statement stmt=null;
		try {
			String sql="insert into login(username,password) values('"+user1.getUsername()+"','"+user1.getPassword()+"')";
            stmt = CustomerUtil.getConnection().createStatement();
			
			return stmt.executeUpdate(sql);
		}
		catch(Exception e) {
			e.printStackTrace();
			return 0;
		}
		
	
		
	}

	

	public static void withdrawUser(Customer user1, double amount1, String mpin) {
		String Debited = "debited";
		Statement st=null;
		try {
			System.out.println("withdrawuser");
			String sql="select balance from register where mpin="+mpin;
			st = CustomerUtil.getConnection().createStatement();
			ResultSet rs=st.executeQuery(sql);
			rs.next();
			double balance=rs.getDouble("balance");
			System.out.println("the balance is :"+balance);
			double balance1=balance-amount1;
			System.out.println("the updated balance is:"+balance1);
			//if(rs.getDouble("amount")>amount1) {
				String sql2="update register set balance= "+balance1 +"where mpin="+mpin;
				st.execute(sql2);
				
			
			
			
				
				
					
					String sql3="select accno from register where mpin='"+mpin+"'";
					st = CustomerUtil.getConnection().createStatement();
					ResultSet rs1=st.executeQuery(sql3);
					
					rs1.next();
						int ano=rs1.getInt("accno");
						System.out.println("the accno is :"+ano);
						String sql4="insert into statement values("+ano+","+amount1+",'"+Debited+"',"+balance1+")";
						st.execute(sql4);
						
					
			
			
			
			
			/*}
			else {
				
			}*/
				
				
				
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void depositUser(Customer user1, Double d, String mpin) {
		String Debited = "credited";
		Statement stmt=null;
		try {
				String sql="select balance from register where mpin='"+mpin+"'";
				stmt=CustomerUtil.getConnection().createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				rs.next();
				
				double balance=rs.getDouble("balance");
				System.out.println("the current:"+balance);
				double balance1=balance+d;
				System.out.println("the updated balance is:"+balance1);
				String sql2="update register set balance= "+balance1 +"where mpin="+mpin;
				stmt.execute(sql2);
				
				
				String sql3="select accno from register where mpin='"+mpin+"'";
				stmt = CustomerUtil.getConnection().createStatement();
				ResultSet rs1=stmt.executeQuery(sql3);
				
				rs1.next();
					int ano=rs1.getInt("accno");
					System.out.println("the accno is :"+ano);
					String sql4="insert into statement values("+ano+","+d+",'"+Debited+"',"+balance1+")";
					stmt.execute(sql4);
				
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public static Double balanceUser(Customer user1, int accno1) {
		Statement stmt=null;
		try {
			String sql="select amount from signin where accno="+accno1;
			stmt=CustomerUtil.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			rs.next();
			System.out.println(rs.getDouble("amount"));
			
			return rs.getDouble("amount");

		}
		catch(Exception e) {
			e.printStackTrace();
			
			
		}
		return null;
		
	}

	/*public static void transferUser(Customer user1, int accno1, double amount1, int accno2) {
		withdrawUser(user1,amount1,accno1);
		depositUser(user1,amount1,accno2);
		
	}*/

	public static boolean deleteUser(Customer user1, int accno1) {
		// TODO Auto-generated method stub
		Statement stmt=null;
		try {
			String sql="delete from signin where accno="+accno1;
			stmt=CustomerUtil.getConnection().createStatement();
			stmt.executeUpdate(sql);
			return true;
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return false;
		
	}
	
	public static double getbalance(Customer user1,String mpin) {
		Statement stmt=null;
		try {
			
			System.out.println("balane dao : "+mpin);
			String sql="select balance from register where mpin='"+mpin+"'";
			stmt=CustomerUtil.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()) {
			double balance=rs.getDouble(1);
			System.out.println("balance dao balance : "+balance);
			System.out.println("the balance is :"+balance );
			return balance;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return 0 ;
		
	}
	public static int getaccno(String username) {
		Statement stmt=null;
		try {
			String sql="select accno from register where username='"+username+"'";
			stmt=CustomerUtil.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			rs.next();
			int accno=rs.getInt(1);
			System.out.println("the daoclass accno is :"+accno);
			return accno;
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return 0;
				
	}
	public static ResultSet getAllStatement(int accno) {
		List<Customer> list = new ArrayList<Customer>();
		Statement stmt = null;
		ResultSet rs=null;
		try {
			String sql = "select * from statement where accno="+accno;
			stmt = CustomerUtil.getConnection().createStatement();
			rs = stmt.executeQuery(sql);
		//	rs.next();
//			while(rs.next()) {
//				Customer user=new Customer();
//				user.setAccno(rs.getInt(1));
//				user.setStatement_amount(rs.getDouble(2));
//				user.setStatus(rs.getString(3));
//				user.setStatement_balance(rs.getDouble(4));
//				list.add(user);
//			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		
		}
		return rs;

	}
	public static String getimages() {
		Statement stmt=null;
		try {
			String sql="select * from images";
			stmt = CustomerUtil.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			rs.next();
			String image=rs.getString(1);
			return image;
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String getmpin(Customer user1, String username) {
		// TODO Auto-generated method stub
		Statement stmt=null;
		try {
			System.out.println("usernameis:"+username);
			String sql="select mpin from register where username='"+username+"'";
			
			stmt=CustomerUtil.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			rs.next();
			String mpin=rs.getString(1);
			System.out.println("the mpin is :"+mpin);
			return mpin;
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return null;
	}

	public static void transferuser(Customer user1, String mpin, Double w, int a) {
		withdrawUser(user1,w,mpin);
		depositUser1(user1,w,a);
		
	}

	private static void depositUser1(Customer user1, Double w, int a) {
		// TODO Auto-generated method stub
		String Debited = "credited";
		Statement stmt=null;
		try {
				String sql="select balance from register where accno="+a;
				stmt=CustomerUtil.getConnection().createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				rs.next();
				rs.getInt(1);
				double balance=rs.getDouble("balance");
				System.out.println(balance);
				double balance1=balance+w;
				System.out.println(balance1);
				String sql2="update register set balance= "+balance1 +"where accno="+a;
				stmt.execute(sql2);
				String sql3="insert into statement values("+a+","+w+",'"+Debited+"',"+balance1+")";
				stmt.execute(sql3);
				
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void UpdateUser(Customer user1, String mpin, String name) {
		// TODO Auto-generated method stub
		Statement st=null;
		try {
			String sql="update register set name='"+name+"' where mpin="+mpin;
			st=CustomerUtil.getConnection().createStatement();
			st.executeUpdate(sql);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void UpdatePhoneUser(Customer user1, String mpin, String pno) {
		// TODO Auto-generated method stub
		Statement st=null;
		try {
			String sql="update register set phono='"+pno+"' where mpin="+mpin;
			st=CustomerUtil.getConnection().createStatement();
			st.executeUpdate(sql);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public static void UpdateAddressUser(Customer user1, String mpin, String address) {
		// TODO Auto-generated method stub
		Statement st=null;
		try {
			String sql="update register set address='"+address+"' where mpin="+mpin;
			st=CustomerUtil.getConnection().createStatement();
			st.executeUpdate(sql);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public static void UpdateAdharUser(Customer user1, String mpin, String adhar) {
		// TODO Auto-generated method stub
		Statement st=null;
		try {
			String sql="update register set adhar='"+adhar+"' where mpin="+mpin;
			st=CustomerUtil.getConnection().createStatement();
			st.executeUpdate(sql);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public static String getStatus(int lid) {
		Statement st=null;
		try {
			String sql="select status from userinfo where id="+lid;
			st=CustomerUtil.getConnection().createStatement();
			
			
	         ResultSet  rs=st.executeQuery(sql);
	         rs.next();
	         String status1=rs.getString(1);
	         System.out.println(status1);
			return status1;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	public static Double getfees(int lid) {
		Statement st=null;
		try {
			String sql="select tfees from userinfo where id="+lid;
			st=CustomerUtil.getConnection().createStatement();
			
			
	         ResultSet  rs=st.executeQuery(sql);
	         rs.next();
	         Double fees=rs.getDouble(1);
	         System.out.println(fees);
			return fees;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	public static boolean getusernameintable(String username) {
		// TODO Auto-generated method stub
		Statement st=null;
		try {
			System.out.println(username);
			String sql="select username from register where username='"+username+"'";
			st=CustomerUtil.getConnection().createStatement();
			
			
	         ResultSet  rs=st.executeQuery(sql);
	         return rs.next();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
		
		
	}

	
	
}
