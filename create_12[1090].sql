--C:\csy1026\create_12.sql
CREATE TABLE prizes(
achievement NUMBER(7,2)
prize_id NUMBER(5)
sponsor_id NUMBER(5)
tournament_id NUMBER(5));

INSERT INTO prizes(achievement, prize_id)
VALUES(5,5);

ALTER TABLE prizes
ADD CONSTRAINT pk_prizes
PRIMARY KEY(prize_id); 

ALTER TABLE prizes
ADD CONSTRAINT fk_s_prizes
FOREIGN KEY(sponsor_id)
REFERENCES sponsors(sponsor_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_t_prizes
FOREIGN KEY(tournament_id)
REFERENCES tournaments(tournament_id);


CREATE TABLE sponsors(
advertisement NUMBER(7,2)
sponsor_id NUMBER(5));

INSERT INTO sponsors(advertisement, sponsor_id)
VALUES(6,5);


ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY(sponsor_id); 


--DROP TABLE prizes;


--DROP TABLE sponsors;

PURGE RECYCLEBIN;


-- sequence for prizes 

CREATE SEQUENCE seq_prizes
INCREMENT by 1
START WITH 20;


-- sequence for sponsors 

CREATE SEQUENCE seq_sponsors
INCREMENT by 1
START WITH 30;












