-- @C:\Oracledatabase\CSY1026\ISAAC_insert_12.sql

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












