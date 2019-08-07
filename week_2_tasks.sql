drop table if exists playerRegistration;
drop table if exists teamEntry;
drop table if exists player;
drop table if exists season;
drop table if exists baseballClub;

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
()

insert into season (seasonYear, seasonName) values
()

insert into player (playerID, firstName, lastName, phone) values
()

insert into teamEntry (ageGroup, teamNumber, clubName, seasonYear, seasonName) values
()

insert into playerRegistration (dateRegistered, playerID, clubName, seasonYear, seasonName,
            ageGroup, teamNumber) values
()