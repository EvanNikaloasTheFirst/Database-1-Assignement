 alter table tournaments
 drop constraint fk_t_catagories;

ALTER TABLE 
DROP CONSTRAINT fk_tp_teams;

ALTER TABLE 
DROP CONSTRAINT fk_tp_players;


ALTER TABLE 
DROP CONSTRAINT pk_players;

ALTER TABLE 
DROP CONSTRAINT pk_teams;

ALTER TABLE 
DROP CONSTRAINT pk_team_players;


 alter table catagories 
 drop constraint pk_catagories; 

 alter table tournaments 
 drop constraint pk_tournaments; 

 alter table tournament_participants 
 drop constraint pk_tournament_participants;



DROP TABLE players;
DROP TABLE teams;
DROP TABLE team_players;
 drop table catagories;
drop table tournaments;
 drop table tournament_participants; 