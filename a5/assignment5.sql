Kenneth Page
CIS150-Bates-Winter2022
Assignment5


/*1
INSERT INTO Movie (id, name, year, rating, runtime, genre, earnings_rank)
VALUES (4846340, 'Hidden Figures', 2016, 'PG', 127, 'BDH', NULL);

INSERT INTO actor (actor_id, movie_id)
VALUES ((SELECT id FROM person WHERE name LIKE '%Jan%Monae%'), (SELECT id FROM movie WHERE name LIKE '%Hidden%Figures%'));

INSERT INTO actor (actor_id, movie_id)
VALUES ((SELECT id FROM person WHERE name LIKE '%Oct%Spenc%'), (SELECT id FROM movie WHERE name LIKE '%Hidden%Figures%'));

INSERT INTO actor (actor_id, movie_id)
VALUES ((SELECT id FROM person WHERE name LIKE '%Taraji%Henson%'), (SELECT id FROM movie WHERE name LIKE '%Hidden%Figures%'));
*/

/*2
SELECT earnings_rank AS 'Earnings Rank', rating AS Rating, runtime as Runtime
FROM Movie
WHERE name LIKE '%Incredibles%2%';
*/

/*3
SELECT name, pob, dob
FROM Person
WHERE name LIKE '%Lady%Gaga%'
OR name LIKE '%Melissa%McCarthy%';
*/

/*4
SELECT name, year
FROM movie
WHERE rating = 'G'
AND year >= 2010;
*/

/*5
SELECT AVG(earnings_rank) AS 'Average Earnings Rank of Top 200 G Movies'
FROM movie
WHERE rating = 'G'
AND earnings_rank <= 200;
*/

/*6
SELECT year, COUNT(type)
FROM Oscar
GROUP BY year
	HAVING COUNT(type) <> 6;
*/

/*7
SELECT name, min(runtime)
FROM movie
WHERE name LIKE '%Star%Wars%';
*/
