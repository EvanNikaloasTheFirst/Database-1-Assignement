-- @C:\Oracledatabase\CSY1026\ISAACqueries_12.sql

-- All records from each table
SELECT *
FROM players;

SELECT *
FROM teams;

SELECT *
FROM team_players;

-- projection with 3 columns
SELECT player_firstname, player_lastname, contact_number
FROM players
ORDER BY player_firstname DESC;

SELECT team_name, team_id
FROM teams
ORDER BY team_name DESC;

-- Predicting for people who live in the UK
SELECT player_firstname, player_lastname, country
FROM players
WHERE country = 'UK';

-- Condition for countries that begins with F
SELECT player_firstname, player_lastname, country
FROM players
WHERE country LIKE 'F%';

-- Negative condition 
SELECT player_firstname, player_lastname, country
FROM players
WHERE NOT country LIKE 'F%';

-- Date range condition
SELECT *
FROM team_players
WHERE date_joined BETWEEN '01-JAN-2017' AND '20-DEC-2020'
ORDER BY date_joined ASC;

-- Joined queries with 3 tables
SELECT p.player_firstname AS NAME, tp.date_joined AS JOINED, t.team_name AS TEAM
FROM players p
INNER JOIN team_players tp
ON tp.player_id = p.player_id 
INNER JOIN teams t
ON t.team_id = tp.team_id
ORDER BY tp.date_joined ASC;


