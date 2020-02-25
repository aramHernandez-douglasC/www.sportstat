package com.project.Entity;

public class Stadium {
	private int _stadiumId;
	private String _stadiumName;
	private String _stadiumCity;
	private String _stadiumState;
	private String _stadiumCountry;
	private int _stadiumCapacity;
	private String _stadiumPlayingSurface;
	private String _stadiumType;
	
	public Stadium(String _stadiumName, String _stadiumCity, String _stadiumState,
			String _stadiumCountry, int _stadiumCapacity, String _stadiumPlayingSurface, String _stadiumType) {
		super();
		
		this._stadiumName = _stadiumName;
		this._stadiumCity = _stadiumCity;
		this._stadiumState = _stadiumState;
		this._stadiumCountry = _stadiumCountry;
		this._stadiumCapacity = _stadiumCapacity;
		this._stadiumPlayingSurface = _stadiumPlayingSurface;
		this._stadiumType = _stadiumType;
	}

	public int get_stadiumId() {
		return _stadiumId;
	}

	public void set_stadiumId(int _stadiumId) {
		this._stadiumId = _stadiumId;
	}

	public String get_stadiumName() {
		return _stadiumName;
	}

	public void set_stadiumName(String _stadiumName) {
		this._stadiumName = _stadiumName;
	}

	public String get_stadiumCity() {
		return _stadiumCity;
	}

	public void set_stadiumCity(String _stadiumCity) {
		this._stadiumCity = _stadiumCity;
	}

	public String get_stadiumState() {
		return _stadiumState;
	}

	public void set_stadiumState(String _stadiumState) {
		this._stadiumState = _stadiumState;
	}

	public String get_stadiumCountry() {
		return _stadiumCountry;
	}

	public void set_stadiumCountry(String _stadiumCountry) {
		this._stadiumCountry = _stadiumCountry;
	}

	public int get_stadiumCapacity() {
		return _stadiumCapacity;
	}

	public void set_stadiumCapacity(int _stadiumCapacity) {
		this._stadiumCapacity = _stadiumCapacity;
	}

	public String get_stadiumPlayingSurface() {
		return _stadiumPlayingSurface;
	}

	public void set_stadiumPlayingSurface(String _stadiumPlayingSurface) {
		this._stadiumPlayingSurface = _stadiumPlayingSurface;
	}

	public String get_stadiumType() {
		return _stadiumType;
	}

	public void set_stadiumType(String _stadiumType) {
		this._stadiumType = _stadiumType;
	}
}
