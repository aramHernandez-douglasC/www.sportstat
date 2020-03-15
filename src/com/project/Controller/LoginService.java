package com.project.Controller;

import com.project.Entity.Login;

public class LoginService 
{
	Login userLogin = new Login("bro","ham");
	
	public boolean checkAuthentication(Login tokenToAuthenticate)
	{
		if(userLogin.checkLoginToken(tokenToAuthenticate))
		{
			return true;
		}
		return false;
	}
}
