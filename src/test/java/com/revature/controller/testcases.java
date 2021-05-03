package com.revature.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.ZonedDateTime;
import javax.servlet.http.HttpServletRequest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;
import com.revature.dao.ReimbursementDao;
import com.revature.model.Reimbursement;
import com.revature.util.Hasher;
import com.revature.util.LoginHelper;


@RunWith(MockitoJUnitRunner.class)
public class testcases {


	@Mock
	private ReimbursementDao reimbursementDao ;
	private static LoginLogicServlet fakeLoginservlet;
	private static LoginHelper fakeLoginHelper;
	private static Hasher hasher;
	private static HttpServletRequest fakeRequest;
	
	@Mock
	private com.revature.model.User fakeuser1,fakeuser2,fakeuser3;
	private Reimbursement fakeReimb;

	@BeforeEach
	public void BeforeEachTest() {

		MockitoAnnotations.initMocks(this);
		fakeuser1 = org.mockito.Mockito.mock(com.revature.model.User.class);
		fakeuser2 = org.mockito.Mockito.mock(com.revature.model.User.class);
		fakeuser3 = org.mockito.Mockito.mock(com.revature.model.User.class);
		fakeLoginHelper =org.mockito.Mockito.mock(LoginHelper.class);
		hasher =org.mockito.Mockito.mock(Hasher.class);
		fakeReimb = org.mockito.Mockito.mock(Reimbursement.class);
		 fakeuser1 = new com.revature.model.User("mona", "Mona@123", "mona", "borisagar", "borisagarmona107@gmail.com", 1);
		 fakeuser1 = new com.revature.model.User("anmol", "Anmol@123", "anmol", "shah", "anmolshah@gmail.com", 2);
		 fakeuser1 = new com.revature.model.User("sona", "Sona@123", "sona", "rana", "sonarana@gmail.com", 1);
		 fakeReimb = new Reimbursement(0, new BigDecimal("12.334"), Timestamp.from(ZonedDateTime.now().toInstant()), Timestamp.from(ZonedDateTime.now().toInstant()), "this is rembursement description", "C:/mona/test/mona.jpg", 1, 2, 1, 1, null);		//fakeAccountDao = org.mockito.Mockito.mock(AccountDaoImpl.class);
		 fakeLoginservlet = new LoginLogicServlet();
		 
				 when( fakeLoginHelper.process(fakeRequest)).thenReturn("LoginPage");
		
	}

	@Test
	public void PageRedirection() {
		assertEquals("LoginPage",fakeLoginHelper.process(fakeRequest), "LoginPage");
	}
	@Test
	public void Hashchecking1() {
		assertEquals(false,hasher.loginByUsername(fakeuser1.getUserName(), fakeuser1.getPassWord()), "LoginPage");
	}
	
	@Test
	public void Hashchecking2() {
		assertEquals(false,hasher.loginByUsername(fakeuser1.getUserName(), fakeuser1.getPassWord()), "LoginPage");
	}
	@Test
	public void Hashcheckin3() {
		assertEquals(false,hasher.loginByUsername(fakeuser1.getUserName(), fakeuser1.getPassWord()), "LoginPage");
	}
	
	
	
	
	
}
