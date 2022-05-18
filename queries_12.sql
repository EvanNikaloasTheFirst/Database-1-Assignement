--@C:\DatabaseOracle\queries_12.sql

SELECT *
FROM players;

SELECT *
FROM teams;

SELECT * 
FROM prizes;

SELECT *
FROM  sponsors;

SELECT *
FROM team_players;

SELECT * 
FROM catagories;

SELECT * 
FROM tournaments;

SELECT * 
FROM tournament_participants;

SELECT *
 FROM rounds;
 
SELECT * 
FROM statistics;

SELECT * 
FROM games;

SELECT * 
FROM game_participants;


-- queries for the sports catagory
SELECT catagory_id,description
FROM catagories
WHERE description = 'SPORTS';

-- condition for catagories starting with A
SELECT catagory_id,description
FROM catagories
WHERE description LIKE 'A%'

-- queries for tournaments in london
SELECT tournament_id,catagory_id,location
FROM tournaments
WHERE location = 'LONDON';
-- conditions for locations starting with B
SELECT tournament_id,catagory_id,location
FROM tournaments
WHERE location LIKE 'B%';

-- condition for tournaments that started before the 15st april and a projection for 3 columns
SELECT tournament_id,catagory_id,start_date
FROM tournaments
WHERE start_date < '15-APR-2022';

--this brings out informatiin for the first tournament
SELECT tournament_id,player_id,team_id
FROM tournament_participants
WHERE tournament_id = 2000;



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


-- projection with 3 columns 
SELECT achievement, prize_id, sponsor_id
FROM prizes 
WHERE achievements = 'GOATS';
-- negative condition 
SELECT achievement, prize_id, sponsor_id
FROM prizes 
WHERE NOT achievements = 'GOATS';
-- conditions for achievement that ends with T
SELECT * 
FROM prizes
WHERE advertisements = '%T'




SELECT round_id,round_level,stage
FROM rounds
ORDER BY round_id;
-- use DESC + 'table name' to remind yourself of all the columns

SELECT round_id,round_level,stage
FROM ROUNDS
WHERE round_level BETWEEN 1 AND 500
ORDER BY stage;

SELECT statistic_id,game_id,duration
FROM statistics
WHERE POG > 5
ORDER BY duration;

-- Joined queries with 3 tables
SELECT p.player_firstname AS NAME, tp.date_joined AS JOINED, t.team_name AS TEAM
FROM players p
INNER JOIN team_players tp
ON tp.player_id = p.player_id 
INNER JOIN teams t
ON t.team_id = tp.team_id
ORDER BY tp.date_joined ASC;

