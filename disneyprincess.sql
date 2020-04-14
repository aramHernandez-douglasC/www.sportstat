DROP DATABASE IF EXISTS SportsStatsDB;
CREATE DATABASE SportsStatsDB;
USE SportsStatsDB;
CREATE TABLE User(
    _loginId int NOT NULL AUTO_INCREMENT,
    _fullName VARCHAR(50),
    _dob VARCHAR(50),
    _city VARCHAR(50),
    _province VARCHAR(50),
    _country VARCHAR(50),
    _loginUser VARCHAR(50) UNIQUE,
    _loginPassword VARCHAR(50),
    
    PRIMARY KEY (_loginId) 
);
CREATE TABLE Stadium(
    _stadiumId INT NOT NULL AUTO_INCREMENT,
	_stadiumName VARCHAR(50),
	_stadiumCity VARCHAR(50),
	_stadiumState VARCHAR(50),
	_stadiumCountry VARCHAR(50),
	_stadiumCapacity int(250),
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
    _APIkey VARCHAR(50),
	_teamID INT NOT NULL AUTO_INCREMENT,
	_teamCity VARCHAR(50),
	_teamFullName VARCHAR(50),
	_teamConference VARCHAR(50),
	_teamDivision VARCHAR(50),
	_headCoach VARCHAR(50),
	_stadiumName VARCHAR(50),
	_teamSeason VARCHAR(50),
    PRIMARY KEY (_teamID)
    
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
    PRIMARY KEY (_playerId)
    
);
CREATE TABLE TrackList(
	_trackID INT NOT NULL AUTO_INCREMENT,
	_teamID VARCHAR(50),
	_teamName VARCHAR(50),
	_userID VARCHAR(50),
	_userName VARCHAR(50),
	PRIMARY KEY (_trackID),
	CONSTRAINT FK_TeamID FOREIGN KEY (_teamID) 
	REFERENCES TEAM(_teamID),
	CONSTRAINT FK_TeamName FOREIGN KEY (_teamName)
	REFERENCES TEAM(_teamFullName),
	CONSTRAINT FK_UserID FOREIGN KEY (_userID)
	REFERENCES User( _loginId),
	CONSTRAINT FK_UserName FOREIGN KEY (_userName)
	REFERENCES User( _loginUser)	
);

CREATE TABLE Schedule(
	_scheduleID INT NOT NULL AUTO_INCREMENT,
	_homeTeam VARCHAR(50),
	_visitorTeam VARCHAR(50),
	_day VARCHAR(50),
	_time  VARCHAR(50),
	_stadium VARCHAR(50),
	_homeScore VARCHAR(50),
	_visitorScore VARCHAR(50),
	PRIMARY KEY (_scheduleID),
	CONSTRAINT FK_homeTeam FOREIGN KEY (_homeTeam)
	REFERENCES Team(_teamFullName),
	CONSTRAINT FK_visitorTeam FOREIGN KEY (_visitorTeam)
	REFERENCES Team(_teamFullName),
	CONSTRAINT FK_stadium FOREIGN KEY(_stadium)
	REFERENCES Stadium(_stadiumName)
	);
	
	
CREATE TABLE Statistics(
	_statsID INT NOT NULL AUTO_INCREMENT,
	_teamID VARCHAR(50),
	_teamName VARCHAR(50),
	_GP VARCHAR(50),
	_W VARCHAR(50),
	_L VARCHAR(50),
	_WIN VARCHAR(50),
	_MIN VARCHAR(50),
	_PTS VARCHAR(50),
	_FGM VARCHAR(50),
	_FGA VARCHAR(50),
	_FG VARCHAR(50),
	_OREB VARCHAR(50),
	_DREB VARCHAR(50),
	_REB VARCHAR(50),
	_AST VARCHAR(50),
	_TOV VARCHAR(50),
	_STL VARCHAR(50),
	_BLK VARCHAR(50),
	_BLKA VARCHAR(50),
	_PF VARCHAR(50),
	_PFD VARCHAR(50),
	_MoreLess VARCHAR(50),
	
	PRIMARY KEY (_statsID),
	CONSTRAINT FK_TeamID FOREIGN KEY (_teamID) 
	REFERENCES TEAM(_teamID),
	CONSTRAINT FK_TeamName FOREIGN KEY (_teamName)
	REFERENCES TEAM(_teamFullName)
);



insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Tami Jermey', '8/17/1978', 'Stockton', 'California', 'United States', 'tjermey0', 'iWeyVltNp');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Maud Dellit', '10/28/1987', 'Oceanside', 'California', 'United States', 'mdellit1', 'ORustLsvNG0');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Maryellen Upcott', '1/23/1996', 'Denver', 'Colorado', 'United States', 'mupcott2', '0Qh6BRq5');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Jannel Stodart', '9/27/1996', 'Dallas', 'Texas', 'United States', 'jstodart3', 'Zex0ZShLphj');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Jeniffer De Benedetti', '12/24/1997', 'Clearwater', 'Florida', 'United States', 'jde4', 'yxlcHeOKWQGO');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Sibyl Lemary', '5/1/1987', 'Arlington', 'Virginia', 'United States', 'slemary5', 'K9pc8dOFCN');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Vincents Stoffers', '8/22/2002', 'Saint Louis', 'Missouri', 'United States', 'vstoffers6', 'ogz3vRiD7v');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Whit Singh', '6/15/1987', 'Hampton', 'Virginia', 'United States', 'wsingh7', 'XY6Hvw9N');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Lorine Morland', '11/16/1991', 'Indianapolis', 'Indiana', 'United States', 'lmorland8', 'F7Gw3Au4');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Elmira Baude', '11/15/1995', 'Paterson', 'New Jersey', 'United States', 'ebaude9', 'O0yZLpgQT');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Nevile Alcock', '6/4/1977', 'Kansas City', 'Kansas', 'United States', 'nalcocka', 'OL71uRQm');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Lurette Vedeneev', '10/22/1977', 'Harrisburg', 'Pennsylvania', 'United States', 'lvedeneevb', 'uYlJPqAFN');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Xymenes Stones', '10/25/1980', 'El Paso', 'Texas', 'United States', 'xstonesc', '58GgQwXYM8');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Dorise Niezen', '11/30/1990', 'Ann Arbor', 'Michigan', 'United States', 'dniezend', 'Kr6W9L8');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Guinevere Stickley', '1/4/1980', 'Shreveport', 'Louisiana', 'United States', 'gstickleye', 't7OmV8i773nZ');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Dionis Dodamead', '8/3/1986', 'Clearwater', 'Florida', 'United States', 'ddodameadf', '9q7ewyD');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Essa Tunney', '12/12/1987', 'Sacramento', 'California', 'United States', 'etunneyg', '0eIyT3Ng1s');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Bunny de Bullion', '9/18/1988', 'San Rafael', 'California', 'United States', 'bdeh', 'Wsab44UB');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Natalya Jeandot', '3/15/1997', 'Topeka', 'Kansas', 'United States', 'njeandoti', 'p7mH60h4xOQF');
insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword) values ('Cesya Grelak', '4/26/1980', 'Tucson', 'Arizona', 'United States', 'cgrelakj', 'd0fdCI');


insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Keebler Group', 'Salamina', 'Colombia', 63415, 'Asteraceae', 'Configurable encompassing time-frame');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Corwin-Murphy', 'Orsha', 'Belarus', 36160, 'Liliaceae', 'Re-contextualized zero defect complexity');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Hilll-Abernathy', 'Krajan', 'Indonesia', 22360, 'Piperaceae', 'Cross-group dedicated toolset');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Lakin LLC', 'Tongzhong', 'China', 49774, 'Convolvulaceae', 'Streamlined uniform contingency');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Champlin LLC', 'Armenokhórion', 'Greece', 46855, 'Ericaceae', 'Advanced intermediate hub');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Towne-Crist', 'Huangzhai', 'China', 58322, 'Primulaceae', 'Vision-oriented high-level intranet');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('O''Reilly Group', 'Granja', 'Brazil', 78735, 'Asteraceae', 'Synergized stable pricing structure');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Medhurst and Sons', 'Trảng Bàng', 'Vietnam', 60601, 'Araceae', 'Reverse-engineered stable middleware');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Hilll, Wilkinson and Mante', 'Karangkeng', 'Indonesia', 21592, 'Juncaceae', 'Self-enabling scalable framework');
insert into Stadium (_stadiumName, _stadiumCity, _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType) values ('Pfannerstill-Mills', 'Piritiba', 'Brazil', 79257, 'Fabaceae', 'Reverse-engineered optimizing matrices');

insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Martynne Eakin', 'Rene Eck', 'Elwin Greenway', 'Cam Mahedy');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Lombard Reubbens', 'Helga Kohtler', 'Augustin Dudeney', 'Kat Ferenc');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Rowan Jakucewicz', 'Adham Duerdin', 'Luce Butte', 'Anastasia Hanney');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Brice Twede', 'Bethena Battams', 'Bone Lambkin', 'Deva Bucknell');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Alvera McFarland', 'Hilary Kearford', 'Benji Kilby', 'Juliet Gaitskill');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Stanislaus Hymas', 'Davine Timperley', 'Korie Finnigan', 'Patten Mieville');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Beverlie Braganza', 'Sibeal Santacrole', 'De Clemensen', 'Bax Pyke');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Hugh McWhan', 'Larry Pimley', 'Arnie Hardisty', 'Herc Honack');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Shanon Shorten', 'Shandie Godspeede', 'Haskell Danko', 'Orbadiah Statefield');
insert into TacticsCoach (_headCoach, _offensiveCoordinator, _defensiveCoordinator, _specialTeamsCoach) values ('Nefen Casin', 'Lynett Wyant', 'Tracie Pieracci', 'Hayley Haddinton');

insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Varberg', 'Drongo, fork-tailed', 'NFC', 'WEST', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Xiayang', 'Cormorant, large', 'NFC', 'EAST', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Lokosovo', 'Weaver, chestnut', 'AFC', 'SOUTH', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Waru', 'Sparrow, rufous-collared', 'AFC', 'SOUTH', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Pangrumasan', 'Galapagos penguin', 'NFC', 'NORTH', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Weton', 'Sulfur-crested cockatoo', 'NFC', 'WEST', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Inhambupe', 'Baleen whale', 'AFC', 'NORTH', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Naawan', 'Red-billed tropic bird', 'AFC', 'SOUTH', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Dubki', 'Otter, small-clawed', 'NFC', 'NORTH', 2019);
insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason) values ('ce2052d8bae043e4b4bc2dd49df78dfe', 'Huanghuatan', 'Langur, hanuman', 'NFC', 'EAST', 2019);

insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Jethro', 'Jaime', 'PH', 179, 334, '7/9/1991', 35, 99);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Evy', 'Minichi', 'PT', 218, 486, '10/3/1987', 45, 51);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Cati', 'Raulstone', 'CN', 187, 445, '5/27/1978', 20, 7);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Hamish', 'Langham', 'FR', 192, 375, '5/30/1980', 33, 87);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Bernelle', 'Gullifant', 'CL', 179, 460, '12/12/1990', 49, 92);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Ki', 'Goodspeed', 'PH', 220, 313, '12/30/1971', 48, 77);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Dinny', 'Hutsby', 'CN', 173, 332, '12/2/1977', 46, 49);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Abbey', 'Dyshart', 'RU', 197, 332, '10/31/1997', 41, 11);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Teresa', 'Lynett', 'CA', 220, 209, '10/29/1970', 42, 67);
insert into Player (_playerFirstName, _playerLastName, _playerPosition, _playerHeight, _playerWeight, _playerDob, _playerAge, _playerNumber) values ('Magnum', 'Manske', 'CN', 207, 290, '3/8/1994', 44, 5);

insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (1, 'Drongo, fork-tailed', 7, 5, 1, 3, 19, 1, 8, 4, 7, 10, 9, 5, 8, 4, 9, 9, 8, 3, 6, 4);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (2, 'Cormorant, large', 9, 5, 1, 3, 8, 9, 5, 10, 10, 10, 5, 9, 5, 5, 8, 4, 6, 10, 1, 7);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (3, 'Weaver, chestnut', 3, 2, 3, 7, 7, 3, 7, 6, 5, 5, 8, 1, 3, 2, 7, 7, 10, 5, 10, 5);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (4, 'Sparrow, rufous-collared', 3, 5, 2, 5, 5, 3, 6, 7, 5, 5, 9, 5, 6, 8, 3, 1, 9, 3, 5, 9);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (5, 'Galapagos penguin', 9, 1, 4, 10, 15, 7, 1, 5, 2, 3, 10, 6, 3, 3, 7, 2, 9, 8, 9, 5);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (6, 'Sulfur-crested cockatoo', 1, 5, 4, 7, 2, 7, 9, 5, 2, 4, 6, 2, 10, 10, 9, 9, 1, 6, 6, 2);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (7, 'Baleen whale', 7, 3, 5, 9, 15, 1, 4, 10, 9, 6, 10, 2, 5, 2, 7, 3, 3, 10, 7, 5);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (8, 'Red-billed tropic bird', 2, 4, 1, 2, 9, 5, 3, 7, 6, 5, 6, 4, 7, 2, 2, 1, 2, 2, 7, 6);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (9, 'Otter, small-clawed', 5, 4, 5, 7, 15, 8, 9, 6, 1, 3, 4, 3, 8, 8, 8, 9, 9, 10, 8, 9);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (10, 'Langur, hanuman', 4, 4, 1, 2, 12, 3, 5, 10, 7, 9, 1, 10, 7, 10, 2, 8, 9, 4, 6, 2);
insert into Statistics (_teamID, _teamName, _GP, _W, _L, _WIN, _MIN, _PTS, _FGM, _FGA, _FG, _OREB, _DREB, _REB, _AST, _TOV, _STL, _BLK, _BLKA, _PF, _PFD, _MoreLess) values (11, 'test', 4, 5, 1, 4, 20, 6, 9, 4, 4, 7, 8, 9, 9, 2, 10, 4, 5, 10, 3, 6);

insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Drongo, fork-tailed', 'Sparrow, rufous-collared', '7/15/2019', '11:33 AM', 'O''Reilly Group', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Cormorant, large', 'Sulfur-crested cockatoo', '7/21/2019', '6:35 PM', 'O''Reilly Group', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Weaver, chestnut', 'Sulfur-crested cockatoo', '12/3/2019', '2:29 AM', 'Hilll-Abernathy', 0, 0); 
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Galapagos penguin', 'Baleen whale', '5/7/2019', '3:39 PM', 'Lakin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Sulfur-crested cockatoo', 'Cormorant, large', '1/22/2020', '6:33 AM', 'Hilll-Abernathy', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Baleen whale', 'Otter, small-clawed', '3/30/2020', '10:04 AM', 'Champlin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Red-billed tropic bird', 'Sparrow, rufous-collared', '4/7/2019', '12:16 PM', 'Champlin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Otter, small-clawed', 'Galapagos penguin', '5/26/2020', '5:20 PM', 'Lakin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Langur, hanuman', 'Drongo, fork-tailed', '5/12/2020', '8:17 PM', 'Towne-Crist', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Drongo, fork-tailed', 'Baleen whale', '11/16/2019', '6:11 PM', 'O''Reilly Group', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Cormorant, large', 'Red-billed tropic bird', '4/25/2020', '7:26 PM', 'Corwin-Murphy', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Weaver, chestnut', 'Red-billed tropic bird', '2/16/2020', '11:20 PM', 'Pfannerstill-Mills', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Sparrow, rufous-collared', 'Cormorant, large', '2/26/2020', '12:13 PM', 'Corwin-Murphy', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Galapagos penguin', 'Cormorant, large', '5/4/2020', '9:09 AM', 'Pfannerstill-Mills', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Sulfur-crested cockatoo', 'Langur, hanuman', '1/1/2020', '1:33 AM', 'O''Reilly Group', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Baleen whale', 'Sparrow rufous-collared', '10/15/2019', '10:50 AM', 'Keebler Group', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Red-billed tropic bird', 'Otter, small-clawed', '5/20/2019', '6:16 PM', 'Hilll-Abernathy', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Otter, small-clawed', 'Baleen whale', '3/25/2020', '12:10 PM', 'Lakin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Langur, hanuman', 'Sparrow, rufous-collared', '4/18/2020', '3:59 AM', 'Medhurst and Sons', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Drongo, fork-tailed', 'Cormorant, large', '11/6/2019', '9:17 AM', 'Medhurst and Sons', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Cormorant, large', 'Otter, small-clawed', '7/16/2019', '4:01 PM', 'Corwin-Murphy', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Weaver, chestnut', 'Drongo, fork-tailed', '4/6/2020', '6:13 PM', 'Hilll Wilkinson and Mante', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Sparrow, rufous-collared', 'Langur, hanuman', '12/14/2019', '4:39 AM', 'Keebler Group', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Galapagos penguin', 'Baleen whale', '11/5/2019', '12:04 PM', 'Lakin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Sulfur-crested cockatoo', 'Langur, hanuman', '5/1/2019', '11:32 PM', 'Champlin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Baleen whale', 'Sulfur-crested cockatoo', '7/24/2019', '7:00 AM', 'Towne-Crist', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Red-billed tropic bird', 'Drongo, fork-tailed', '3/30/2019', '7:07 PM', 'Keebler Group', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Otter, small-clawed', 'Otter, small-clawed', '9/16/2019', '1:45 AM', 'Lakin LLC', 0, 0);
insert into Schedule (_homeTeam, _visitorTeam, _day, _time, _stadium, _homeScore, _visitorScore) values ('Langur, hanuman', 'Baleen whale', '7/7/2019', '5:27 AM', 'Corwin-Murphy', 0, 0);
