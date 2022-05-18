--@C:\DatabaseOracle\insert_12.sql

--PLAYER RECORDS
--entry starts from 10000 because of sequence

--Regular insert containning all the column and values
INSERT INTO players
(player_id, player_firstname, player_lastname, address_line1, town, postcode, country, contact_number, email)
VALUES (seq_players.NEXTVAL, 'DAVID', 'JOHNSON', '22 GROVE ROAD', 'BOURNEMOUTH', 'BH2 4FK', 'UK', '+447389 256739', 'DAVEJOHNSON2@GMAIL.COM');

INSERT INTO players
(player_id, player_firstname, player_lastname, address_line1, town, postcode, country, contact_number, email)
VALUES (seq_players.NEXTVAL, 'LINDA', 'JONES', '40 PUMPKIN HILL STREET', 'CARLETON PLACE', 'ON K7C 6A9', 'CANADA', '+160455 55555', 'LINDAJONES245@GMAIL.COM');

--Another type of insert that contains just values
INSERT INTO players
VALUES (seq_players.NEXTVAL, 'MATT', 'DEVIN', '73 LONGFELLOW AVENUE', 'ELMONT', 'NY 11003', 'USA', '+142555 50102', 'MATTYDEE89@GMAIL.COM');

INSERT INTO players
VALUES (seq_players.NEXTVAL, 'COLE', 'POGBA', '20 BOULEVARD DE CHARONNE', 'PARIS', '75020', 'FRANCE', '01437 31759', 'COLEPG77@GMAIL.COM');

-- The insert contains all except defaults
INSERT INTO players
(player_id, player_firstname, player_lastname, address_line1, postcode, country, contact_number, email)
VALUES (seq_players.NEXTVAL, 'AUSTIN', 'ICHA', '53 LONDON ROAD', 'SE0 8SP', 'UK', '+447094 785637', 'ICHAAUSTIN225@GMAIL.COM');

-- inserts for catagories
INSERT INTO catagories(catagory_id,description)
VALUES (seq_catagories.NEXTVAL,'SPORTS');

INSERT INTO catagories(catagory_id,description)
VALUES (seq_catagories.NEXTVAL,'SHOOTER');

INSERT INTO catagories(catagory_id,description)
VALUES (seq_catagories.NEXTVAL,'RACING');

INSERT INTO catagories(catagory_id,description)
VALUES (seq_catagories.NEXTVAL,'ACTION');

INSERT INTO catagories(catagory_id,description)
VALUES (seq_catagories.NEXTVAL,'ARCADE');


-- sponsor reocrds

INSERT INTO sponsors(advertisement, sponsor_id)
VALUES('CAST', seq_sponsors.NEXTVAL);

INSERT INTO sponsors(advertisement, sponsor_id)
VALUES('WISE', seq_sponsors.NEXTVAL);

INSERT INTO sponsors(advertisement, sponsor_id)
VALUES('HAT', seq_sponsors.NEXTVAL);

INSERT INTO sponsors(advertisement, sponsor_id)
VALUES('LESSON', seq_sponsors.NEXTVAL);

INSERT INTO sponsors(advertisement, sponsor_id)
VALUES('TASK', seq_sponsors.NEXTVAL);

-- rounds
INSERT INTO rounds 
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, 4,'STAGE 2');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, 9,'STAGE 15');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, 12,'STAGE 32');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, 82,'STAGE 42');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, 19,'STAGE 92');


--TEAM RECORDS
--entry starts from 200 because of sequence
INSERT INTO teams
(team_id, team_name)
VALUES (seq_teams.NEXTVAL, 'KILLERROUNDS204');

INSERT INTO teams
(team_id, team_name)
VALUES (seq_teams.NEXTVAL, 'COMMANDERSRP1');

INSERT INTO teams
VALUES (seq_teams.NEXTVAL, 'WEDESTROYFORALIVING00');

INSERT INTO teams
VALUES (seq_teams.NEXTVAL, 'MIKETYSONSONS04');

INSERT INTO teams
VALUES (seq_teams.NEXTVAL, 'BLOODTHIRSTYMONSTERS');

--tournamnets
INSERT INTO tournaments( tournament_id,catagory_id,location,start_date,end_date)
VALUES (seq_tournaments.NEXTVAL,seq_catagories.CURRVAL,'LONDON','01-APR-2022','07-APR-2022');

INSERT INTO tournaments( tournament_id,catagory_id,location,start_date,end_date)
VALUES (seq_tournaments.NEXTVAL,seq_catagories.CURRVAL,'BIRMINGHAM','08-APR-2022','14-APR-2022');

INSERT INTO tournaments( tournament_id,catagory_id,location,start_date,end_date)
VALUES (seq_tournaments.NEXTVAL,seq_catagories.CURRVAL,'MANCHESTER','15-APR-2022','21-APR-2022');

INSERT INTO tournaments( tournament_id,catagory_id,location,start_date,end_date)
VALUES (seq_tournaments.NEXTVAL,seq_catagories.CURRVAL,'LEICESTER','22-APR-2022','28-APR-2022');

INSERT INTO tournaments( tournament_id,catagory_id,location,start_date,end_date)
VALUES (seq_tournaments.NEXTVAL,seq_catagories.CURRVAL,'NOTTINGHAM','29-MAY-2022','05-MAY-2022');

-- games
INSERT INTO games 
(game_id,player_id,start_time)
VALUES (seq_games.NEXTVAL,seq_players.NEXTVAL,'2022-01-01 23:30:00');

INSERT INTO games 
(game_id,player_id,start_time)
VALUES (seq_games.NEXTVAL,seq_players.CURRVAL, '2022-01-01 10:48:01');

INSERT INTO games 
(game_id,player_id,start_time)
VALUES (seq_games.NEXTVAL,seq_players.CURRVAL, '2022-02-18 12:34:44');

INSERT INTO games 
(game_id,player_id,start_time)
VALUES (seq_games.NEXTVAL,seq_players.CURRVAL, '2022-03-21 15:44:04');

INSERT INTO games 
(game_id,player_id,start_time)
VALUES (seq_games.NEXTVAL,seq_players.CURRVAL, '2022-01-15 19:30:01')

--statistics
INSERT INTO statistics 
(statistic_id,game_id,duration,kills,POG)
VALUES (seq_statistics.NEXTVAL,seq_games.CURRVAL,500,15,2);

INSERT INTO statistics 
(statistic_id,game_id,duration,kills,POG)
VALUES (seq_statistics.NEXTVAL, seq_games.CURRVAL, 200 ,2 ,0);

VALUES INTO statistics
(statistic_id,game_id,duration,kills,POG)
VALUES(seq_statistics.NEXTVAL,seq_games.CURRVAL, 1100,15,20);

VALUES INTO statistics
(statistic_id,game_id,duration,kills,POG)
VALUES(seq_statistics.NEXTVAL,seq_games.CURRVAL, 200,15,20);

--TEAM_PLAYERS RECORDS
--entry starts from 1 because of sequence
INSERT INTO team_players
(team_id, player_id, date_joined)
VALUES (200,10000, '20-JUN-2020');

INSERT INTO team_players
(team_id, player_id, date_joined)
VALUES (201,10001, '04-FEB-2020');

INSERT INTO team_players
VALUES (202,10002, '23-SEP-2019');

INSERT INTO team_players
VALUES (203,10003, '13-MAR-2018');

INSERT INTO team_players
VALUES (204,10004, '18-DEC-2021');

-- prize records

INSERT INTO prizes(achievement, prize_id)
VALUES('GOAT', seq_prizes.NEXTVAL);

INSERT INTO (achievement, prize_id)
VALUES('SAME', seq_prizes.NEXTVAL);

INSERT INTO prizes(achievement, prize_id)
VALUES('HANDS', seq_prizes.NEXTVAL);

INSERT INTO prizes(achievement, prize_id)
VALUES('GOAL', seq_prizes.NEXTVAL);

INSERT INTO prizes(achievement, prize_id)
VALUES('SET', seq_prizes.NEXTVAL);

-- GAME_PARTICIPANTS

INSERT INTO game_participants 
(game_id,player_id,team_id,tournament_id,game_participant_id)
VALUES (seq_games.NEXTVAL,seq_players.CURRVAL, seq_teams.CURRVAL,seq_tournaments.CURRVAL,seq.game_participants.NEXTVAL);

INSERT INTO game_participants
(game_id,player_id,team_id,tournament_id,game_participant_id)
VALUES (seq_games.NEXTVAL,seq_players.seq_games.CURRVAL, seq_teams.NEXTVAL,seq_tournaments.NEXTVAL,seq.game_participants.NEXTVAL);

INSERT INTO game_participants
(game_id,player_id,team_id,tournament_id,game_participant_id)
VALUES (seq_games.NEXTVAL,seq_teams.CURVAL,seq_tournaments.NEXTVAL,seq.game_participants.NEXTVAL);

-- TOURNAMENT_PARTICIPANTS


INSERT INTO tournament_participants(tournament_id,player_id,team_id)
VALUES (seq_tournaments.NEXTVAL,seq_players.CURRVAL,seq_teams.CURRVAL);

INSERT INTO tournament_participants(tournament_id,player_id,team_id)
VALUES (seq_tournaments.NEXTVAL,seq_players.CURRVAL,seq_teams.CURRVAL);

INSERT INTO tournament_participants(tournament_id,player_id,team_id)
VALUES (seq_tournaments.NEXTVAL,seq_players.CURRVAL,seq_teams.CURRVAL);

INSERT INTO tournament_participants(tournament_id,player_id,team_id)
VALUES (seq_tournaments.NEXTVAL,seq_players.CURRVAL,seq_teams.CURRVAL);

INSERT INTO tournament_participants(tournament_id,player_id,team_id)
VALUES (seq_tournaments.NEXTVAL,seq_players.CURRVAL,seq_teams.CURRVAL);


