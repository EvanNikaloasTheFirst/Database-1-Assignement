-- @C:\Oracledatabase\CSY1026\create_12.sql

CREATE TABLE players(
player_id NUMBER(5),
player_firstname VARCHAR2(25),
player_lastname VARCHAR2(25),
address_line1 VARCHAR2(30),
town VARCHAR2(30) DEFAULT 'NORTHAMPTON',
postcode VARCHAR2(10),
country VARCHAR2(30),
contact_number VARCHAR2(15),
email VARCHAR2(30)
DEFAULT 'NORTHAMPTON'
);

CREATE TABLE catagories (
catagory_id NUMBER(5),
description VARCHAR2(8)); 

CREATE TABLE sponsors(
sponsor_id NUMBER(5),
advertisement VARCHAR2(30)
);

CREATE TABLE rounds (
round_id NUMBER(5),
round_level NUMBER(5) DEFAULT 1,
stage VARCHAR2(40) DEFAULT 'STAGE 1' NOT NULL);

CREATE TABLE teams(
team_id NUMBER(5),
team_name VARCHAR2(30)
);

CREATE TABLE tournaments (
tournament_id NUMBER(5),
catagory_id NUMBER(5) NOT NULL,
location VARCHAR2(30) ,
start_date DATE NOT NULL,
end_date DATE);

CREATE TABLE games (
game_id NUMBER(5),
round_id NUMBER(5),
start_time TIMESTAMP DEFAULT SYSTIMESTAMP
);

CREATE TABLE statistics (
statistic_id NUMBER(5),
game_id NUMBER(5)NOT NULL,
duration NUMBER(5),
kills NUMBER(5),
pog NUMBER(5)
);

CREATE TABLE team_players(
team_id	NUMBER(5)NOT NULL,
player_id	NUMBER(5) NOT NULL,
Date_joined	DATE
);

CREATE TABLE prizes(
prize_id NUMBER(5),
achievement VARCHAR2(30),
sponsor_id NUMBER(5) NOT NULL,
tournament_id NUMBER(5)NOT NULL);

CREATE TABLE tournament_participants(
tournament_id NUMBER(5)NOT NULL,
player_id NUMBER (5), 
team_id NUMBER (5)); 


CREATE TABLE game_participants(
game_participant_id NUMBER(5) NOT NULL,
game_id NUMBER(5) NOT NULL,
player_id NUMBER(5) NOT NULL,
team_id NUMBER(5) NOT NULL,
tournament_id NUMBER(5) NOT NULL
);



-- creating the sequences 
CREATE SEQUENCE seq_players
INCREMENT BY 1
START WITH 10000;

CREATE SEQUENCE seq_catagories
INCREMENT BY 1
START WITH 3000;

CREATE SEQUENCE seq_sponsors
INCREMENT by 1
START WITH 30;

CREATE SEQUENCE seq_rounds
INCREMENT BY 1
START WITH 1
NOCYCLE;

CREATE SEQUENCE seq_round_levels
INCREMENT BY 1
START WITH 1
NOCYCLE;

CREATE SEQUENCE seq_teams
INCREMENT BY 1
START WITH 200;

CREATE SEQUENCE seq_tournaments
INCREMENT BY 1
START WITH 2000;

CREATE SEQUENCE seq_games
INCREMENT BY 1
START WITH 50
NOCYCLE;

CREATE SEQUENCE seq_statistics
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_prizes
INCREMENT by 1
START WITH 20;

CREATE SEQUENCE seq_game_participants
INCREMENT BY 1
START WITH 5000;

