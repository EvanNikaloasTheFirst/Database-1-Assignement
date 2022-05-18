--@C:\DatabaseOracle\create_12.sql

CREATE TABLE players(
player_id NUMBER(5),
player_firstame VARCHAR2(25),
player_lastname VARCHAR2(25),
address_line1 VARCHAR2(20),
town VARCHAR2(25) DEFAULT 'NORTHAMPTON',
postcode VARCHAR2(6),
country VARCHAR2(20),
contact_number VARCHAR2(11),
email VARCHAR2(30)
DEFAULT 'NORTHAMPTON'
);

CREATE TABLE catagories (
catagory_id NUMBER(5),
description VARCHAR2(8)); 

CREATE TABLE sponsors(
sponsor_id NUMBER(5),
advertisement NUMBER(7,2)
);

CREATE TABLE rounds (
round_id NUMBER(5),
round_level NUMBER(5),
stage VARCHAR2(40) DEFAULT 'STAGE 1' NOT NULL);

CREATE TABLE teams(
team_id NUMBER(5),
team_name VARCHAR2(20)
);

CREATE TABLE tournaments (
tournament_id NUMBER(5),
catagory_id NUMBER(5) NOT NULL,
location VARCHAR2(20) ,
start_date DATE,
end_date DATE);

CREATE TABLE games (
game_id NUMBER(5),
round_id NUMBER NOT NULL(5),
player_id NUMBER(5),
start_time DATE 
);

CREATE TABLE statistics (
statistic_id NUMBER(5),
game_id NUMBER(5)NOT NULL,
duration NUMBER(5),
kills NUMBER(5),
POG NUMBER(5)
);

CREATE TABLE team_players(
team_id	NUMBER(5)NOT NULL,
player_id	NUMBER(5) NOT NULL,
Date_joined	DATE
);

CREATE TABLE prizes(
prize_id NUMBER(5),
achievement NUMBER(7,2),
sponsor_id NUMBER(5) NOT NULL,
tournament_id NUMBER(5)NOT NULL);

CREATE TABLE game_participants(
 game_participant_id NUMBER(5)NOT NULL,
game_id NUMBER(5)NOT NULL,
player_id NUMBER(5)NOT NULL,
team_id NUMBER(5)NOT NULL,
tournament_id NUMBER(5)NOT NULL,
);


CREATE TABLE tournament_participants(
tournament_id NUMBER(5)NOT NULL,
player_id NUMBER (5), 
team_id NUMBER (5)); 


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

CREATE SEQUENCE seq_teams
INCREMENT BY 1
START WITH 200;

CREATE SEQUENCE seq_tournaments
INCREMENT BY 1
START WITH 2000;

CREATE SEQUENCE seq_games
INCREMENT BY 1
START WITH 1
NOCYCLE;

CREATE SEQUENCE seq_statistics
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_prizes
INCREMENT by 1
START WITH 20;

CREATE SEQUENCE seq_game_participants
INCREMENT BY 1
START WITH 1
NOCYCLE;








