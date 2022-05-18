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
