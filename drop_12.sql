-- @C:\Oracledatabase\CSY1026\drop_12.sql


DROP SEQUENCE seq_game_participants;

DROP SEQUENCE seq_prizes;

DROP SEQUENCE seq_statistics;

DROP SEQUENCE seq_games;

DROP SEQUENCE seq_tournaments;

DROP SEQUENCE seq_teams;

DROP SEQUENCE seq_rounds;

DROP SEQUENCE seq_round_levels;

DROP SEQUENCE seq_sponsors;

DROP SEQUENCE seq_catagories;

DROP SEQUENCE seq_players;



-- drop foreign keys
ALTER TABLE game_participants 
DROP CONSTRAINT fk_gp_tournament_participants;

ALTER TABLE game_participants
DROP CONSTRAINT fk_gp_games;

ALTER TABLE tournament_participants 
DROP CONSTRAINT fk_tp_tournaments;

ALTER TABLE tournament_participants
DROP CONSTRAINT fk_tp_teams;

ALTER TABLE tournament_participants
DROP CONSTRAINT fk_tp_players;  



ALTER TABLE prizes
DROP CONSTRAINT fk_t_prizes;

ALTER TABLE prizes
DROP CONSTRAINT fk_s_prizes;

ALTER TABLE team_players
DROP CONSTRAINT fk_tpl_teams;

ALTER TABLE team_players
DROP CONSTRAINT fk_tpl_players;

ALTER TABLE statistics
DROP CONSTRAINT fk_s_games;

ALTER TABLE games
DROP CONSTRAINT fk_g_rounds;

ALTER TABLE tournaments
DROP CONSTRAINT fk_t_catagories;


-- drop PRIMARY KEYS
ALTER TABLE game_participants 
DROP CONSTRAINT pk_game_participants;

ALTER TABLE tournament_participants
DROP CONSTRAINT pk_tournament_participants;


ALTER TABLE prizes
DROP CONSTRAINT pk_prizes;

ALTER TABLE team_players
DROP CONSTRAINT pk_team_players;

ALTER TABLE statistics 
DROP CONSTRAINT pk_statistics;

ALTER TABLE games
DROP CONSTRAINT pk_games;

ALTER TABLE tournaments
DROP CONSTRAINT pk_tournaments;

ALTER TABLE teams
DROP CONSTRAINT pk_teams;

ALTER TABLE rounds 
DROP CONSTRAINT pk_rounds;

ALTER TABLE sponsors
DROP CONSTRAINT pk_sponsors;

ALTER TABLE catagories
DROP CONSTRAINT pk_catagories;

ALTER TABLE players
DROP CONSTRAINT pk_players;

-- drop tables
DROP TABLE game_participants;
DROP TABLE tournament_participants; 
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
