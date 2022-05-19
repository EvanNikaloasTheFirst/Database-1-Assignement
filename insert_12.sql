--@C:\Oracledatabase\CSY1026\insert_12.sql

--PLAYER RECORDS
--entry starts from 10000 because of sequence and continues with what it was incremented by
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


--CATAGORY RECORDS
-- inserts for catagories
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO catagories
(catagory_id,description)
VALUES (seq_catagories.NEXTVAL, 'SPORTS');

INSERT INTO catagories
(catagory_id,description)
VALUES (seq_catagories.NEXTVAL, 'SHOOTER');

INSERT INTO catagories
(catagory_id,description)
VALUES (seq_catagories.NEXTVAL, 'RACING');

INSERT INTO catagories
(catagory_id,description)
VALUES (seq_catagories.NEXTVAL, 'ACTION');

INSERT INTO catagories
(catagory_id,description)
VALUES (seq_catagories.NEXTVAL, 'ARCADE');


--SPONSOR RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO sponsors
(sponsor_id, advertisement)
VALUES( seq_sponsors.NEXTVAL,'CAST');

INSERT INTO sponsors
(sponsor_id, advertisement)
VALUES(seq_sponsors.NEXTVAL, 'WISE');

INSERT INTO sponsors
(sponsor_id, advertisement)
VALUES(seq_sponsors.NEXTVAL, 'HAT');

INSERT INTO sponsors
(sponsor_id, advertisement)
VALUES(seq_sponsors.NEXTVAL, 'LESSON');

INSERT INTO sponsors
(sponsor_id, advertisement)
VALUES(seq_sponsors.NEXTVAL, 'TASK');


--ROUND RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO rounds 
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, seq_round_levels.NEXTVAL,'STAGE 2');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, seq_round_levels.NEXTVAL,'STAGE 15');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, seq_round_levels.NEXTVAL,'STAGE 32');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, seq_round_levels.NEXTVAL,'STAGE 42');

INSERT INTO rounds
(round_id,round_level,stage)
VALUES (seq_rounds.NEXTVAL, seq_round_levels.NEXTVAL,'STAGE 92');


--TEAM RECORDS
--entry starts from 200 because of sequence and continues with what it was incremented by
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


--TOURNAMENT RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO tournaments
(tournament_id, catagory_id, location, start_date, end_date)
VALUES (seq_tournaments.NEXTVAL, 3000, 'LONDON','01-APR-2022','07-APR-2022');

INSERT INTO tournaments
(tournament_id,catagory_id,location,start_date,end_date)
VALUES (seq_tournaments.NEXTVAL, 3001, 'BIRMINGHAM','08-APR-2022','14-APR-2022');

INSERT INTO tournaments
(tournament_id,catagory_id,location,start_date,end_date)
VALUES (seq_tournaments.NEXTVAL, 3002, 'MANCHESTER','15-APR-2022','21-APR-2022');

INSERT INTO tournaments
(tournament_id, catagory_id, location, start_date, end_date)
VALUES (seq_tournaments.NEXTVAL, 3003, 'LEICESTER','22-APR-2022','28-APR-2022');

INSERT INTO tournaments
(tournament_id, catagory_id, location, start_date, end_date)
VALUES (seq_tournaments.NEXTVAL,3004, 'NOTTINGHAM','29-MAY-2022','05-MAY-2022');


--GAME RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO games 
(game_id, round_id, start_time)
VALUES (seq_games.NEXTVAL, 1, TIMESTAMP '2022-01-01 23:30:00.00');

INSERT INTO games 
(game_id, round_id,start_time)
VALUES (seq_games.NEXTVAL, 2, TIMESTAMP '2022-01-01 10:48:01.00');

INSERT INTO games 
(game_id, round_id,start_time)
VALUES (seq_games.NEXTVAL, 3, TIMESTAMP '2022-02-18 12:34:44.00');

INSERT INTO games 
(game_id, round_id,start_time)
VALUES (seq_games.NEXTVAL, 4, TIMESTAMP '2022-03-21 15:44:04.00');

INSERT INTO games 
(game_id, round_id,start_time)
VALUES (seq_games.NEXTVAL, 5, TIMESTAMP '2022-01-15 19:30:01.00');


--STATISTIC RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO statistics 
(statistic_id,game_id,duration,kills,pog)
VALUES (seq_statistics.NEXTVAL, 50, 500, 15, 2);

INSERT INTO statistics 
(statistic_id,game_id,duration,kills,pog)
VALUES (seq_statistics.NEXTVAL, 51, 200 , 2,0);

INSERT INTO statistics
(statistic_id,game_id,duration,kills,pog)
VALUES(seq_statistics.NEXTVAL, 52, 1100, 15, 20);

INSERT INTO statistics
(statistic_id,game_id,duration,kills,pog)
VALUES(seq_statistics.NEXTVAL, 53, 200, 15, 20);

INSERT INTO statistics 
(statistic_id,game_id,duration,kills,pog)
VALUES (seq_statistics.NEXTVAL, 54, 700 ,8 , 40);


--TEAM_PLAYERS RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO team_players
(team_id, player_id, date_joined)
VALUES (200, 10000, '20-JUN-2020');

INSERT INTO team_players
(team_id, player_id, date_joined)
VALUES (201, 10001, '04-FEB-2020');

INSERT INTO team_players
VALUES (202, 10002, '23-SEP-2019');

INSERT INTO team_players
VALUES (203, 10003, '13-MAR-2018');

INSERT INTO team_players
VALUES (204, 10004, '18-DEC-2021');


--PRIZE RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO prizes
(prize_id, achievement, sponsor_id, tournament_id)
VALUES (seq_prizes.NEXTVAL, 'DOG', 30, 2000);

INSERT INTO prizes
(prize_id, achievement, sponsor_id, tournament_id)
VALUES (seq_prizes.NEXTVAL, 'TIGER', 31, 2001);

INSERT INTO prizes
(prize_id, achievement, sponsor_id, tournament_id)
VALUES (seq_prizes.NEXTVAL, 'GOAT', 32, 2002);

INSERT INTO prizes
(prize_id, achievement, sponsor_id, tournament_id)
VALUES (seq_prizes.NEXTVAL, 'CAT', 33, 2003);

INSERT INTO prizes
(prize_id, achievement, sponsor_id, tournament_id)
VALUES (seq_prizes.NEXTVAL, 'LION', 34, 2004);


--TOURNAMENT_PARTICIPANT RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO tournament_participants
(tournament_id, player_id, team_id)
VALUES (2000,10000, 200);

INSERT INTO tournament_participants
(tournament_id,player_id,team_id)
VALUES (2001, 10001, 201);

INSERT INTO tournament_participants
(tournament_id,player_id,team_id)
VALUES (2002, 10002, 202);

INSERT INTO tournament_participants
(tournament_id,player_id,team_id)
VALUES (2003, 10003, 203);

INSERT INTO tournament_participants
(tournament_id,player_id,team_id)
VALUES (2004, 10004, 204);


--GAME_PARTICIPANTS RECORDS
--entry starts from where it starts with in the created sequences and continues with what it was incremented by
INSERT INTO game_participants 
(game_participant_id, game_id, player_id, team_id, tournament_id)
VALUES (seq_game_participants.NEXTVAL, 50, 10000, 200, 2000);

INSERT INTO game_participants
(game_participant_id, game_id, player_id, team_id,tournament_id)
VALUES (seq_game_participants.NEXTVAL, 51, 10001, 201, 2001);

INSERT INTO game_participants
(game_participant_id, game_id, player_id, team_id,tournament_id)
VALUES (seq_game_participants.NEXTVAL, 52, 10002, 202, 2002);

INSERT INTO game_participants
(game_participant_id, game_id,player_id,team_id,tournament_id)
VALUES (seq_game_participants.NEXTVAL, 53, 10003, 203, 2003);

INSERT INTO game_participants
(game_participant_id, game_id,player_id,team_id,tournament_id)
VALUES (seq_game_participants.NEXTVAL, 54, 10004, 204, 2004);














