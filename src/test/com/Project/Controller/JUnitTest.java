package test.com.Project.Controller;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.project.Entity.Login;

import jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter;

class JUnitTest {
     
	LoginService testLoginService;
	Login testUserLogin; 
	
	@BeforeEach
	void setUp() throws Exception {
		testUserLogin = new Login("bro", "ham");
		
	}

	@Test
	void testToCheckAuthentication() {
		assertEquals(true,testUserLogin.checkLoginToken(testUserLogin));
	}

}
