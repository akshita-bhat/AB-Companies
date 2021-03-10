/* create table */

CREATE TABLE Automic_Airline (
    Airline VARCHAR(255) NOT NULL,
    Ranking REAL,
    PRIMARY KEY (Airline)
);

/* insert values into table; alternatively load table */

INSERT INTO Automic_Airline (Airline, Ranking)
VALUES ('Air Newzealand', 8.90);
INSERT INTO Automic_Airline (Airline, Ranking)
VALUES ('Japan Air Line', 8.53);
INSERT INTO Automic_Airline (Airline, Ranking)
VALUES ('Qantas', 8.70);
INSERT INTO Automic_Airline (Airline, Ranking)
VALUES ('Cathay Pacific', 7.73);

/* Select airline with second highest ranking, In this case = Qantas (8.70) */

SELECT airline 
FROM automic_airline 
WHERE ranking = (SELECT MAX(ranking) 
				 FROM automic_airline 
				 WHERE ranking < (SELECT MAX(ranking) 
								  FROM automic_airline));
