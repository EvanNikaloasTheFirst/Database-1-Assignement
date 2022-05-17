-- @C:\Oracledatabase\CSY1026\ISAAC_drop_120.sql

--DROP FOREIGN KEY CONSTRAINTS
ALTER TABLE  team_players
DROP CONSTRAINT fk_tp_teams;

ALTER TABLE team_players
DROP CONSTRAINT fk_tp_players;

----DROP PRIMARY KEY CONSTRAINTS
ALTER TABLE players
DROP CONSTRAINT pk_players;

ALTER TABLE teams
DROP CONSTRAINT pk_teams;

ALTER TABLE team_players
DROP CONSTRAINT pk_team_players;

DROP SEQUENCE seq_players;
DROP SEQUENCE seq_teams;

--DROP TABLES
DROP TABLE players;
DROP TABLE teams;
DROP TABLE team_players;
PURGE RECYCLEBIN;
