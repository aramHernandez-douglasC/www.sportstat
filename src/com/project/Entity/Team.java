package com.project.Entity;

public class Team {
	private String _APIkey;
	private int _teamID;
	private String _teamCity;
	private String _teamFullName;
	private String _teamConference;
	private String _teamDivision;
	private String _teamCoach;
	private String _teamStadium;
	private String _teamSeason;
	
	public Team(String _APIkey, String _teamCity, String _teamFullName, String _teamConference,
			String _teamDivision, String _teamCoach, String _teamStadium, String _teamSeason) {
		super();
		this._APIkey = _APIkey;
		this._teamID = _teamID;
		this._teamCity = _teamCity;
		this._teamFullName = _teamFullName;
		this._teamConference = _teamConference;
		this._teamDivision = _teamDivision;
		this._teamCoach = _teamCoach;
		this._teamStadium = _teamStadium;
		this._teamSeason = _teamSeason;
	}
	
	public String get_APIkey() {
		return _APIkey;
	}
	public void set_key(String _APIkey) {
		this._APIkey = _APIkey;
	}
	public int get_teamID() {
		return _teamID;
	}
	public void set_teamID(int _teamID) {
		this._teamID = _teamID;
	}
	public String get_teamCity() {
		return _teamCity;
	}
	public void set_teamCity(String _teamCity) {
		this._teamCity = _teamCity;
	}
	public String get_teamFullName() {
		return _teamFullName;
	}
	public void set_teamFullName(String _teamFullName) {
		this._teamFullName = _teamFullName;
	}
	public String get_teamConference() {
		return _teamConference;
	}
	public void set_teamConference(String _teamConference) {
		this._teamConference = _teamConference;
	}
	public String get_teamDivision() {
		return _teamDivision;
	}
	public void set_teamDivision(String _teamDivision) {
		this._teamDivision = _teamDivision;
	}
	public String get_teamCoach() {
		return _teamCoach;
	}
	public void set_teamCoach(String _teamCoach) {
		this._teamCoach = _teamCoach;
	}
	public String get_teamStadium() {
		return _teamStadium;
	}
	public void set_teamStadium(String _teamStadium) {
		this._teamStadium = _teamStadium;
	}
	public String get_teamSeason() {
		return _teamSeason;
	}
	public void set_teamSeason(String _teamSeason) {
		this._teamSeason = _teamSeason;
	}
}
