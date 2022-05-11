ALTER SESSION SET NLS_DATE_FORMAT = 'HH24:MI:SS'

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

ALTER TABLE game_participants 
ADD CONSTRAINT pk_game_participants
PRIMARY KEY (game_participants);


ALTER TABLE rounds 
ADD CONSTRAINT pk_rounds
PRIMARY KEY (rounds_id);

ALTER TABLE games
ADD CONSTRAINT pk_games
PRIMARY KEY (game_id);


ALTER TABLE statistics 
ADD CONSTRAINT pk_statistics
PRIMARY KEY (statistic_id);

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