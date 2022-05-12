CREATE TABLE rounds (
    round_id NUMBER(5),
    round_level NUMBER(5),
    stage VARCHAR2(40) DEFAULT 'STAGE 1' NOT NULL);
    

CREATE TABLE games (
    game_id NUMBER(5),
    player_id NUMBER(5),
    start_time DATE NOT NULL
);

CREATE TABLE statistics (
    statistic_id NUMBER(5),
    game_id NUMBER(5),
    duration NUMBER(5),
    kills NUMBER(5),
    POG NUMBER(5)
);

CREATE TABLE game_participants(
    game_id NUMBER(5),
    player_id NUMBER(5),
    team_id NUMBER(5),
    tournament_id NUMBER(5),
    game_participant_id NUMBER(5)
);

CREATE TABLE catagories (
catagory_id NUMBER(5),
description VARCHAR2(8)); 

CREATE TABLE tournaments (
tournament_id NUMBER(5),
catagory_id NUMBER(5),
location VARCHAR2(20) ,
start_date DATE,
end_date DATE);

CREATE TABLE tournament_participants(
tournament_id NUMBER(5),
player_id NUMBER (5), 
team_id NUMBER (5));  


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

CREATE TABLE prizes(
achievement NUMBER(7,2)
prize_id NUMBER(5)
sponsor_id NUMBER(5)
tournament_id NUMBER(5));

CREATE TABLE sponsors(
advertisement NUMBER(7,2)
sponsor_id NUMBER(5))
