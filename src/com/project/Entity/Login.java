package com.project.Entity;

public class Login {
	private int _loginId;
	private String _loginUser;
	private String _loginPassword;
	
	public Login(String _loginUser, String _loginPassword) {
		this._loginUser = _loginUser;
		this._loginPassword = _loginPassword;
	}
	
	public int get_loginId() {
		return _loginId;
	}
	public void set_loginId(int _loginId) {
		this._loginId = _loginId;
	}
	public String get_loginUser() {
		return _loginUser;
	}
	public void set_loginUser(String _loginUser) {
		this._loginUser = _loginUser;
	}
	public String get_loginPassword() {
		return _loginPassword;
	}
	public void set_loginPassword(String _loginPassword) {
		this._loginPassword = _loginPassword;
	}
	
	public boolean checkLoginToken(Login tokenToCheck)
	{
		if(tokenToCheck.get_loginPassword().contentEquals(_loginPassword))
		{
			return true;
		}
		return false;
	}
}
