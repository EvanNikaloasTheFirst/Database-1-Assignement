--@C:\DatabaseOracle\drop_12.sql

-- drop foreign keys
ALTER TABLE tournamnnt_participants 
DROP CONSTRAINT fk_tp_tournamnets  

ALTER TABLE tournamnnt_participants
DROP CONSTRAINT fk_tp_teams 

ALTER TABLE tournamnnt_participants
DROP CONSTRAINT fk_tp_players  

ALTER TABLE game_participants 
DROP CONSTRAINT fk_gp_tournaments_participants;

ALTER TABLE game_participants
DROP CONSTRAINT fk_gp_games

ALTER TABLE prizes
DROP CONSTRAINT fk_t_prizes

ALTER TABLE prizes
DROP CONSTRAINT fk_s_prizes

ALTER TABLE team_players
DROP CONSTRAINT fk_tp_teams;

ALTER TABLE team_players
DROP CONSTRAINT fk_tp_players;

ALTER TABLE statistics
DROP CONSTRAINT fk_s_games

ALTER TABLE games
DROP CONSTRAINT fk_g_rounds

ALTER TABLE tournaments
DROP CONSTRAINT fk_t_catagories;


-- drop PRIMARY KEYS

ALTER TABLE tournament_participants
DROP CONSTRAINT pk_tournament_participants

ALTER TABLE game_participants 
DROP CONSTRAINT pk_game_participants

ALTER TABLE prizes
DROP CONSTRAINT pk_prizes

ALTER TABLE team_players
DROP CONSTRAINT pk_team_players

ALTER TABLE statistics 
DROP CONSTRAINT pk_statistics

ALTER TABLE games
DROP CONSTRAINT pk_games

ALTER TABLE tournaments
DROP CONSTRAINT pk_tournaments

ALTER TABLE teams
DROP CONSTRAINT pk_teams

ALTER TABLE rounds 
DROP CONSTRAINT pk_rounds

ALTER TABLE sponsors
DROP CONSTRAINT pk_sponsors

ALTER TABLE catagories
DROP CONSTRAINT pk_catagories

ALTER TABLE players
DROP CONSTRAINT pk_players

-- drop tables

DROP TABLE tournament_participants; 
DROP TABLE game_participants;
DROP TABLE prizes;
DROP TABLE team_players;
DROP TABLE statistics;
DROP TABLE games;
DROP TABLE tournaments;
DROP TABLE teams;
DROP TABLE rounds;
DROP TABLE sponsors;
DROP TABLE catagories;
DROP TABLE players;



PURGE RECYCLEBIN;



