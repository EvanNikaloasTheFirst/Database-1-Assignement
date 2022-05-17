-- @C:\Oracledatabase\CSY1026\ISAAC_create_12.sql

--CREATE TABLE COMMANDS

CREATE TABLE players(
player_id NUMBER(5) NOT NULL,
player_firstname VARCHAR2(25),
player_lastname VARCHAR2(25),
address_line1 VARCHAR2(25),
town VARCHAR2(25) DEFAULT 'NORTHAMPTON',
postcode VARCHAR2(10),
country VARCHAR2(20)NOT NULL,
contact_number VARCHAR2(15) NOT NULL,
email VARCHAR2(30) NOT NULL
);

CREATE TABLE teams(
team_id NUMBER(3) NOT NULL,
team_name VARCHAR2(25)
);

CREATE TABLE team_players(
team_id	NUMBER(5) NOT NULL,
player_id	NUMBER(5)NOT NULL,
date_joined	DATE
);


--SEQUENCE CREATE

CREATE SEQUENCE seq_players
INCREMENT BY 1
START WITH 10000;

CREATE SEQUENCE seq_teams
INCREMENT BY 1
START WITH 200;