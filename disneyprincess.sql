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

insert into Login (_loginUser, _loginPassword) values ('tscolts0', 'kNnJFjwEP3O');
insert into Login (_loginUser, _loginPassword) values ('dmerrin1', '6ZDsrkU');
insert into Login (_loginUser, _loginPassword) values ('mmccard2', 'vEC7B8g2e');
insert into Login (_loginUser, _loginPassword) values ('ralner3', '0rgttSdFkpCf');
insert into Login (_loginUser, _loginPassword) values ('tdowyer4', 'qA3xS5');

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
