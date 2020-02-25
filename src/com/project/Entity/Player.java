package com.project.Entity;

public class Player {
	private int _playerId;
	private String _playerFirstName;
	private String _playerLastName;
	private String _playerPosition;
	private String _playerHeight;
	private String _playerWeight;
	private String _playerDob;
	private int _playerAge;
	private String _teamName;
	private int _playerNumber;
	
	public Player(int _playerId, String _playerFirstName, String _playerLastName, String _playerPosition,
			String _playerHeight, String _playerWeight, String _playerDob, int _playerAge, String _teamName,
			int _playerNumber) {
		super();
		this._playerId = _playerId;
		this._playerFirstName = _playerFirstName;
		this._playerLastName = _playerLastName;
		this._playerPosition = _playerPosition;
		this._playerHeight = _playerHeight;
		this._playerWeight = _playerWeight;
		this._playerDob = _playerDob;
		this._playerAge = _playerAge;
		this._teamName = _teamName;
		this._playerNumber = _playerNumber;
	}
	public Player(String _playerFirstName, String _playerLastName, String _playerPosition,
			String _playerHeight, String _playerWeight, String _playerDob, int _playerAge, String _teamName,
			int _playerNumber) {
		super();
		
		this._playerFirstName = _playerFirstName;
		this._playerLastName = _playerLastName;
		this._playerPosition = _playerPosition;
		this._playerHeight = _playerHeight;
		this._playerWeight = _playerWeight;
		this._playerDob = _playerDob;
		this._playerAge = _playerAge;
		this._teamName = _teamName;
		this._playerNumber = _playerNumber;
	}
	
	public int get_playerId() {
		return _playerId;
	}
	public void set_playerId(int _playerId) {
		this._playerId = _playerId;
	}
	public String get_playerFirstName() {
		return _playerFirstName;
	}
	public void set_playerFirstName(String _playerFirstName) {
		this._playerFirstName = _playerFirstName;
	}
	public String get_playerLastName() {
		return _playerLastName;
	}
	public void set_playerLastName(String _playerLastName) {
		this._playerLastName = _playerLastName;
	}
	public String get_playerPosition() {
		return _playerPosition;
	}
	public void set_playerPosition(String _playerPosition) {
		this._playerPosition = _playerPosition;
	}
	public String get_playerHeight() {
		return _playerHeight;
	}
	public void set_playerHeight(String _playerHeight) {
		this._playerHeight = _playerHeight;
	}
	public String get_playerWeight() {
		return _playerWeight;
	}
	public void set_playerWeight(String _playerWeight) {
		this._playerWeight = _playerWeight;
	}
	public String get_playerDob() {
		return _playerDob;
	}
	public void set_playerDob(String _playerDob) {
		this._playerDob = _playerDob;
	}
	public int get_playerAge() {
		return _playerAge;
	}
	public void set_playerAge(int _playerAge) {
		this._playerAge = _playerAge;
	}
	public String get_teamName() {
		return _teamName;
	}
	public void set_teamName(String _teamName) {
		this._teamName = _teamName;
	}
	public int get_playerNumber() {
		return _playerNumber;
	}
	public void set_playerNumber(int _playerNumber) {
		this._playerNumber = _playerNumber;
	}
}
