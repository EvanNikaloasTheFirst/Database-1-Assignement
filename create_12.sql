--@C:\DatabaseOracle\create_12.sql
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

--ALTER TABLE catagories
--ADD CONSTRAINT pk_catagories
--PRIMARY KEY (catagory_id);

--ALTER TABLE tournaments
--ADD CONSTRAINT pk_tournaments
--PRIMARY KEY (tournament_id)

--ALTER TABLE tournament_participants
--ADD CONSTRAINT pk_tournament_participants
--PRIMARY KEY (tournament_id,player_id,team_id);

--ALTER TABLE tournaments
--ADD CONSTRAINT fk_t_catagories
--FOREIGN KEY (catagory_id)
--REFERENCES catagories (catagory_id); 

-- alter table tournaments
-- drop constraint fk_t_catagories;

-- alter table catagories 
-- drop constraint pk_catagories; 

-- alter table tournaments 
-- drop constraint pk_tournaments; 

-- alter table tournament_participants 
-- drop constraint pk_tournament_participants;

-- drop table catagories;
--drop table tournaments;
-- drop table tournament_participants; 