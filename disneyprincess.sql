DROP DATABASE IF EXISTS SportsStatsDB;
CREATE DATABASE SportsStatsDB;
USE SportsStatsDB;
CREATE TABLE Login(
    _loginId int NOT NULL AUTO_INCREMENT,
    _loginUser VARCHAR(50),
    _loginPassword VARCHAR(50),
    PRIMARY KEY (_loginId) 
);
CREATE TABLE Stadium(
    _stadiumId INT NOT NULL AUTO_INCREMENT,
	_stadiumName VARCHAR(50),
	_stadiumCity VARCHAR(50),
	_stadiumState VARCHAR(50),
	_stadiumCountry VARCHAR(50),
	_stadiumCapacity int(MAX),
	_stadiumPlayingSurface VARCHAR(50),
	_stadiumType VARCHAR(50),
    PRIMARY KEY (_stadiumId)
);
CREATE TABLE TacticsCoach(
    _tacticsCoachId INT NOT NULL AUTO_INCREMENT,
    _headCoach VARCHAR(50),
	_offensiveCoordinator VARCHAR(50),
	_defensiveCoordinator VARCHAR(50),
	_specialTeamsCoach VARCHAR(50),
    PRIMARY KEY (_tacticsCoachId)
);
CREATE TABLE TEAM(
    _APIkey VARCHAR(MAX),
	_teamID INT NOT NULL AUTO_INCREMENT,
	_teamCity VARCHAR(50),
	_teamFullName VARCHAR(50),
	_teamConference VARCHAR(50),
	_teamDivision VARCHAR(50),
	_headCoach VARCHAR(50),
	_stadiumName VARCHAR(50),
	_teamSeason VARCHAR(50),
    PRIMARY KEY (_teamID),
    FOREIGN KEY (_stadiumName) REFERENCES Stadium (_stadiumName),
    FOREIGN KEY (_headCoach) REFERENCES TacticsCoach (_headCoach)
);
CREATE TABLE Player(
    _playerId INT NOT NULL AUTO_INCREMENT,
	_playerFirstName VARCHAR(50),
	_playerLastName VARCHAR(50),
	_playerPosition VARCHAR(50),
	_playerHeight FLOAT(10),
	_playerWeight FLOAT(10),
	_playerDob VARCHAR(50),
	_playerAge INT(3),
	_teamName VARCHAR(50),
	_playerNumber INT(2),
    PRIMARY KEY (_playerId),
    FOREIGN KEY (_teamName) REFERENCES Team (_teamName)
);