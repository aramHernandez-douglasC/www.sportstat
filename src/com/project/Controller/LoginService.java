package com.project.Controller;

import com.project.Entity.Login;
import com.project.Entity.User;

public class LoginService 
{
	User userLogin = new User("bro","ham");
	
	public boolean checkAuthentication(User tokenToAuthenticate)
	{
		if(userLogin.checkLoginToken(tokenToAuthenticate))
		{
			return true;
		}
		return false;
	}
}
