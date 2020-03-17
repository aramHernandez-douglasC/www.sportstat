package com.project.Entity;

import java.util.Date;

public class User {
	
 
	private int _userID;
    private String _fullName;
    private Date _dob;
    private String _city;
    private String _province; 
    private String _country;
    private String _loginUser; 
    private String _loginPassword;
    
    public User(int _userID, String _fullName, Date _dob, String _city, String _province, String _country,
			String _loginUser, String _loginPassword) {
		super();
		this._userID = _userID;
		this._fullName = _fullName;
		this._dob = _dob;
		this._city = _city;
		this._province = _province;
		this._country = _country;
		this._loginUser = _loginUser;
		this._loginPassword = _loginPassword;
	}
    
    public User(String _fullName, Date _dob, String _city, String _province, String _country,
			String _loginUser, String _loginPassword) {
		super();
		
		this._fullName = _fullName;
		this._dob = _dob;
		this._city = _city;
		this._province = _province;
		this._country = _country;
		this._loginUser = _loginUser;
		this._loginPassword = _loginPassword;
	}
    
    
    
	public User(String _loginUser, String _loginPassword) {
		super();
		this._loginUser = _loginUser;
		this._loginPassword = _loginPassword;
	}



	public int get_userID() {
		return _userID;
	}
	public void set_userID(int _userID) {
		this._userID = _userID;
	}
	public String get_fullName() {
		return _fullName;
	}
	public void set_fullName(String _fullName) {
		this._fullName = _fullName;
	}
	public Date get_dob() {
		return _dob;
	}
	public void set_dob(Date _dob) {
		this._dob = _dob;
	}
	public String get_city() {
		return _city;
	}
	public void set_city(String _city) {
		this._city = _city;
	}
	public String get_province() {
		return _province;
	}
	public void set_province(String _province) {
		this._province = _province;
	}
	public String get_country() {
		return _country;
	}
	public void set_country(String _country) {
		this._country = _country;
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
	
	public boolean checkLoginToken(User tokenToCheck)
	{
		if(tokenToCheck.get_loginPassword().contentEquals(_loginPassword))
		{
			return true;
		}
		return false;
	}
}
	
	
    
	