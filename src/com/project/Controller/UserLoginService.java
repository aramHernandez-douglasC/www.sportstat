package com.project.Controller;

import com.project.Entity.User;

public class UserLoginService {
	
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
