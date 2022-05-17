-- @C:\Oracledatabase\CSY1026\ISAAC_constraint_12.sql

--PRIMARY KEYS
ALTER TABLE players
ADD CONSTRAINT pk_players
PRIMARY KEY (player_id);

ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY (team_id);

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY (player_id, team_id);

--FOREIGN KEYS
ALTER TABLE team_players
ADD CONSTRAINT fk_tp_teams
FOREIGN KEY (team_id)
REFERENCES teams (team_id);

ALTER TABLE team_players
ADD CONSTRAINT fk_tp_players
FOREIGN KEY (player_id)
REFERENCES players (player_id);  

 
--UNIQUE KEYS
ALTER TABLE players
ADD CONSTRAINT u_email
UNIQUE (email);                                                 


--CHECK
ALTER TABLE players
ADD CONSTRAINT ck_player_firstname
CHECK (player_firstname = UPPER(player_firstname));

ALTER TABLE teams
ADD CONSTRAINT ck_team_name
CHECK (team_name = UPPER(team_name));





