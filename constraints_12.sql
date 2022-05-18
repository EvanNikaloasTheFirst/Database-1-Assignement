--@C:\DatabaseOracle\constraints_12.sql
--primary keys
ALTER TABLE players
ADD CONSTRAINT pk_players
PRIMARY KEY (player_id);

ALTER TABLE catagories
ADD CONSTRAINT pk_catagories
PRIMARY KEY (catagory_id);

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY(sponsor_id);

ALTER TABLE rounds 
ADD CONSTRAINT pk_rounds
PRIMARY KEY (rounds_id);

ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY (team_id);

ALTER TABLE tournaments
ADD CONSTRAINT pk_tournaments
PRIMARY KEY (tournament_id)

ALTER TABLE games
ADD CONSTRAINT pk_games
PRIMARY KEY (game_id);

ALTER TABLE statistics 
ADD CONSTRAINT pk_statistics
PRIMARY KEY (statistic_id);

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY (player_id, team_id);

ALTER TABLE prizes
ADD CONSTRAINT pk_prizes
PRIMARY KEY(prize_id);

ALTER TABLE game_participants 
ADD CONSTRAINT pk_game_participants
PRIMARY KEY (game_participants_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY (tournament_id,player_id,team_id);


-- foreign keys
ALTER TABLE tournaments
ADD CONSTRAINT fk_t_catagories   
FOREIGN KEY (catagory_id)
REFERENCES catagories (catagory_id);

ALTER TABLE games
ADD CONSTRAINT fk_g_rounds
FOREIGN KEY (round_id)
REFERENCES rounds(round_id);

 ALTER TABLE statistics
ADD CONSTRAINT fk_s_games
FOREIGN KEY (game_id)
REFERENCES games (game_id);

ALTER TABLE team_players
ADD CONSTRAINT fk_tp_players
FOREIGN KEY (player_id)
REFERENCES players (player_id); 

ALTER TABLE team_players
ADD CONSTRAINT fk_tp_teams
FOREIGN KEY (team_id)
REFERENCES teams (team_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_s_prizes
FOREIGN KEY(sponsor_id)
REFERENCES sponsors(sponsor_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_t_prizes
FOREIGN KEY(tournament_id)
REFERENCES tournaments(tournament_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_gp_games
FOREIGN KEY (game_id)
REFERENCES games (game_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_gp_tournaments_participants  
FOREIGN KEY (tournament_id,player_id,team_id)
REFERENCES tournament_participants (tournament_id,player_id,team_id);

ALTER TABLE tournamnnt_participants
ADD CONSTRAINT fk_tp_players  
FOREIGN KEY (player_id)
REFERENCES players (player_id);

ALTER TABLE tournamnnt_participants
ADD CONSTRAINT fk_tp_teams  
FOREIGN KEY (team_id)
REFERENCES teams (team_id);

ALTER TABLE tournamnnt_participants 
ADD CONSTRAINT fk_tp_tournamnets    
FOREIGN KEY (tournament_id)
REFERENCES tournaments (tournamnent_id);

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





 





