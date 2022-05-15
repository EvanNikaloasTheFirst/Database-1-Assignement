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

CREATE TABLE prizes(
achievement NUMBER(7,2)
prize_id NUMBER(5)
sponsor_id NUMBER(5)
tournament_id NUMBER(5));

CREATE TABLE sponsors(
advertisement NUMBER(7,2)
sponsor_id NUMBER(5));


CREATE TABLE rounds (
--pk
round_id NUMBER(5),
round_level NUMBER(5),
stage VARCHAR2(40) DEFAULT 'STAGE 1' NOT NULL);

CREATE TABLE games (
    --pk
    game_id NUMBER(5),
    player_id NUMBER(5),
    start_time DATE NOT NULL
);

CREATE TABLE statistics (
   --pk
    statistic_id NUMBER(5),
    --fK
    game_id NUMBER(5),

    duration NUMBER(5),
    kills NUMBER(5),
    POG NUMBER(5)
);

CREATE TABLE game_participants(
    game_id NUMBER(5),
      --fk
    player_id NUMBER(5),
      --fk
    team_id NUMBER(5),
      --fk
    tournament_id NUMBER(5),

    game_participant_id NUMBER(5)
);


ALTER TABLE players
ADD CONSTRAINT pk_players
PRIMARY KEY (player_id);


ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY (team_id);

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY (player_id, team_id);

ALTER TABLE catagories
ADD CONSTRAINT pk_catagories
PRIMARY KEY (catagory_id);

ALTER TABLE tournaments
ADD CONSTRAINT pk_tournaments
PRIMARY KEY (tournament_id)

ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY (tournament_id,player_id,team_id);

ALTER TABLE prizes
ADD CONSTRAINT pk_prizes
PRIMARY KEY(prize_id); 

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY(sponsor_id); 


ALTER TABLE rounds 
ADD CONSTRAINT pk_rounds
PRIMARY KEY (rounds_id);

ALTER TABLE games
ADD CONSTRAINT pk_games
PRIMARY KEY (game_id);


ALTER TABLE statistics 
ADD CONSTRAINT pk_statistics
PRIMARY KEY (statistic_id);

ALTER TABLE game_participants 
ADD CONSTRAINT pk_game_participants
PRIMARY KEY (game_participants);

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY (player_id, team_id);



ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY (tournament_id,player_id,team_id);


ALTER TABLE tournaments
ADD CONSTRAINT fk_t_catagories
FOREIGN KEY (catagory_id)
REFERENCES catagories (catagory_id); 

ALTER TABLE prizes
ADD CONSTRAINT fk_t_prizes
FOREIGN KEY(tournament_id)
REFERENCES tournaments(tournament_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_s_prizes
FOREIGN KEY(sponsor_id)
REFERENCES sponsors(sponsor_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY (tournament_id,player_id,team_id);



ALTER TABLE games
ADD CONSTRAINT fk_g_rounds
FOREIGN KEY (round_id)
REFERENCES rounds(round_id);

ALTER TABLE statistics
ADD CONSTRAINT fk_s_games
FOREIGN KEY (game_id)
REFERENCES games (game_id);


ALTER TABLE game_participants
ADD CONSTRAINT fk_gp_tournaments_participants
FOREIGN KEY (tournament_id,player_id,team_id)
REFERENCES tournament_participants (tournament_id,player_id,team_id);