package com.project.Entity;

public class Schedule {
	
	private int _scheduleID;
	private String _homeTeam;
	private String _visitorTeam;
	private String _day;
	private String _time;
	private String _stadium;
	private String _homeScore;
	private String _visitorScore;
	
	public Schedule() {}
	
	public Schedule(String _homeTeam, String _visitorTeam, String _day, String _time, String _stadium,
			String _homeScore, String _visitorScore) {
		super();
		this._homeTeam = _homeTeam;
		this._visitorTeam = _visitorTeam;
		this._day = _day;
		this._time = _time;
		this._stadium = _stadium;
		this._homeScore = _homeScore;
		this._visitorScore = _visitorScore;
	}


	public int get_scheduleID() {
		return _scheduleID;
	}


	public void set_scheduleID(int _scheduleID) {
		this._scheduleID = _scheduleID;
	}


	public String get_homeTeam() {
		return _homeTeam;
	}


	public void set_homeTeam(String _homeTeam) {
		this._homeTeam = _homeTeam;
	}


	public String get_visitorTeam() {
		return _visitorTeam;
	}


	public void set_visitorTeam(String _visitorTeam) {
		this._visitorTeam = _visitorTeam;
	}


	public String get_day() {
		return _day;
	}


	public void set_day(String _day) {
		this._day = _day;
	}


	public String get_time() {
		return _time;
	}


	public void set_time(String _time) {
		this._time = _time;
	}


	public String get_stadium() {
		return _stadium;
	}


	public void set_stadium(String _stadium) {
		this._stadium = _stadium;
	}


	public String get_homeScore() {
		return _homeScore;
	}


	public void set_homeScore(String _homeScore) {
		this._homeScore = _homeScore;
	}


	public String get_visitorScore() {
		return _visitorScore;
	}


	public void set_visitorScore(String _visitorScore) {
		this._visitorScore = _visitorScore;
	}
	
	
	
	
}
