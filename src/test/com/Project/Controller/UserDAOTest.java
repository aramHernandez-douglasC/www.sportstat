package test.com.Project.Controller;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.*;
import java.util.Date;

import java.sql.Connection;

import org.junit.Assert;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.project.Boundary.UserDAO;
import com.project.Entity.User;

class UserDAOTest {
	
	User testUser;
	UserDAO user = new UserDAO();
	
	@BeforeEach
	void setUp() throws Exception {
		user = new UserDAO();
	}

	@Test
void testAddInfo() { 
		@SuppressWarnings("deprecation")
		Date dob = new Date(90, 03, 31);
		
		testUser = new User("Louis" ,dob , "Vancouver", "BC", "Canada", "louis", "abcd");
	  	user.addInfo(testUser);
	  	
	  	Assert.assertNotNull(user);
	}
	@Test
	void testGetUser() {
		
		Assert.assertNotNull(user.getUser("Louis"));	
	}
	
	@Test
	void testUpdateUserName(){
		user.updateUserName("Louis", "Dean");
		testUser = user.getUser("Dean");
		Assert.assertNotNull(testUser);
		
	}
	
	@Test
	void testDeleteInfo() { 
		user.deleteUser("Dean");
		
		Assert.assertEquals(null, testUser);
		
	}

}
