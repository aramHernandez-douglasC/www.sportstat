package test.com.Project.Controller;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.project.Controller.UserLoginService;
import com.project.Entity.Login;
import com.project.Entity.User;

import jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter;

class UnitTestUser {
     //Unit tests for User entity
	User testUserLogin; 
	@BeforeEach
	void setUp() throws Exception {
		testUserLogin = new User("rita", "1234");
		
	}
	@Test
	void testGetUsername() {
		assertEquals("rita", testUserLogin.get_loginUser());
	}
	@Test
	void testGetPassword() {
		assertEquals("1234", testUserLogin.get_loginPassword());
	}
	@Test 
	void testCheckLoginToken(){
		assertTrue(testUserLogin.checkLoginToken(testUserLogin));
	}

}
