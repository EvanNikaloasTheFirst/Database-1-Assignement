-- @C:\Oracledatabase\CSY1026\create_120.sql

--CREATE TABLE COMMANDS

CREATE TABLE players(
player_id NUMBER(5),
player_firstame VARCHAR2(25),
player_lastname VARCHAR2(25)
address_line1 VARCHAR2(20),
town VARCHAR2(25),
postcode VARCHAR2(6),
country VARCHAR2(20),
contact_number VARCHAR2(11),
email VARCHAR2(30)
DEFAULT 'NORTHAMPTON'
);

CREATE TABLE teams(
team_id NUMBER(5),
team_name VARCHAR2(20)
);

CREATE TABLE team_players(
team_id	NUMBER(5),
player_id	NUMBER(5),
Date_joined	DATE
);


--ALTER TABLE players
--ADD CONSTRAINT pk_players
--PRIMARY KEY (player_id);

--ALTER TABLE teams
--ADD CONSTRAINT pk_teams
--PRIMARY KEY (team_id);

--ALTER TABLE team_players
--ADD CONSTRAINT pk_team_players
--PRIMARY KEY (player_id, team_id);

--ALTER TABLE team_players
--ADD CONSTRAINT fk_tp_teams
--FOREIGN KEY (team_id)
--REFERENCES teams (team_id);

--ALTER TABLE team_players
--ADD CONSTRAINT fk_tp_players
--FOREIGN KEY (player_id)
--REFERENCES players (player_id);                                                   

--ALTER TABLE 
--DROP CONSTRAINT fk_tp_teams;

--ALTER TABLE 
--DROP CONSTRAINT fk_tp_players;

--ALTER TABLE 
--DROP CONSTRAINT pk_players;

--ALTER TABLE 
--DROP CONSTRAINT pk_teams;

--ALTER TABLE 
--DROP CONSTRAINT pk_team_players;


--ROP TABLE players;

--DROP TABLE teams;

--DROP TABLE team_players;