drop table playerRegistration;
drop table teamEntry;
drop table player;
drop table season;
drop table baseballClub;

create table baseballClub (
    clubName        nvarchar(100),
    contactName     nvarchar(100),
    primary key (clubName)
);

create table season (
    seasonYear      int,
    seasonName      nvarchar(6),
    primary key (seasonYear, seasonName)
);

create table player (
    playerId        int,
    firstName       nvarchar(100),
    lastName        nvarchar(100),
    phone           nvarchar(50),
    primary key (playerId)   
);

create table teamEntry (
    ageGroup        nvarchar(3),
    teamNumber      int,
    clubName        nvarchar(100),
    seasonYear      int,
    seasonName      nvarchar(6),
    primary key (ageGroup, teamNumber, clubName, seasonYear, seasonName),
    foreign key (clubName) references baseballClub,
    foreign key (seasonYear, seasonName) references season, 
);

create table playerRegistration (
    dateRegistered  date,
    playerID        int,
    clubName        nvarchar(100),
    seasonYear      int,
    seasonName      nvarchar(6),
    ageGroup        nvarchar(3),
    teamNumber      int,
    primary key (playerID, clubName, seasonYear, seasonName, ageGroup, teamNumber),
    foreign key (playerID) references player,
    foreign key (ageGroup, teamNumber, clubName, seasonYear, seasonName) references teamEntry,
);

insert into baseballClub (clubName, contactName) values
('Mt Martha Baseball Club', 'Bob Jane');

insert into season (seasonYear, seasonName) values
(2018, 'Winter'), (2018, 'Summer');

insert into player (playerID, firstName, lastName, phone) values
(10001, 'Mark', 'Romig', 5551234), (10002, 'John', 'Howard', 5552345),
(10003, 'Julia', 'Gillard', 5553456);

insert into teamEntry (ageGroup, teamNumber, clubName, seasonYear, seasonName) values
('Seniors', 1, 'Mt Martha Baseball Club', 2018, 'Winter'),
('U14', 2, 'Mt Martha Baseball Club', 2018, 'Summer'),
('U14', 2, 'Mt Martha Baseball Club', 2018, 'Summer');

insert into playerRegistration (dateRegistered, playerID, clubName, seasonYear, seasonName,
            ageGroup, teamNumber) values
(13-04-2018, 10001, 'Mt Martha Baseball Club', 2018, 'Winter', 'Seniors', 1),
(22-12-2017, 10002, 'Mt Martha Baseball Club', 2018, 'Summer', 'U14', 2),
(20-12-2018, 10003, 'Mt Martha Baseball Club', 2018, 'Summer', 'U14', 2);