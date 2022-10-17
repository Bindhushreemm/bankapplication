package testcases;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Assertions;

import dao.CustomerDao;
import loginservlets.CustomerLogin;
import pojo.Customer;

import org.junit.jupiter.api.Test;


class test1 {

	@Test
	void test() {
		
		Assertions.assertEquals("approved", CustomerDao.getStatus(7));
		
	}
	
	@Test
	void usernameTest() {
		Assertions.assertTrue(CustomerDao.getusernameintable("tushar12"));
	}
	
	@Test
	void getaccnoTest() {
		Assertions.assertEquals(25, CustomerDao.getaccno("sohan12"));
	}
	
	@Test
	void getbalanceTest() {
		Assertions.assertNotEquals(70000.00, CustomerDao.balanceUser(null, 2));
	}
	
}
