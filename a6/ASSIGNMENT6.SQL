Ken Page
CIS150-Bates-Winter2022
Assignment weeks 11&12


--#1
--SELECT movie.name, movie.year
--FROM Movie
--	INNER JOIN actor ON actor.movie_id = movie.id
--	INNER JOIN person ON person.id = actor.actor_id
--WHERE person.name LIKE '%Geena%Davis%';

--#2
--SELECT MIN(movie.runtime) as Shortest, MAX(movie.runtime) as Longest, ROUND(AVG(movie.runtime), 2) as Average_Runtime
--FROM movie
--WHERE rating = "R";

--#3
--SELECT oscar.type, oscar.year, movie.name
--FROM Oscar
--	INNER JOIN movie ON movie.id = oscar.movie_id
--	INNER JOIN person ON person.id = oscar.person_id
--WHERE person.name LIKE '%Spielberg%';

--#4
--SELECT person.pob as 'Place of Birth', count(person.name) as 'People from there'
--FROM person
--GROUP BY person.pob
--	HAVING COUNT(person.name) >= 50
--	AND person.pob LIKE '%'
--ORDER BY COUNT(person.name) DESC;

--#5
--SELECT COUNT(movie.id) as 'Movies with no oscars'
--FROM movie
--	INNER JOIN oscar ON oscar.movie_id = movie.id
--WHERE movie.id NOT IN (SELECT oscar.movie_id FROM oscar);
-- OK this one returns a number, so the query works, but the number is 0, so if I didn't construct this correctly, I'd like another stab at it if possible

--#6
--SELECT person.name as Name, COUNT(actor.movie_id) as 'Number of movies'
--FROM Person
--	LEFT JOIN actor on actor.actor_id = person.id
--GROUP BY actor.actor_id
--	HAVING person.pob LIKE '%Sweden'
--ORDER BY COUNT(actor.actor_id) DESC, person.name ASC;

--#7
--SELECT COUNT(person.name) AS 'Number of directors that have directed at least one R-rated movie'
--FROM person
--	INNER JOIN director ON director.director_id = person.id
--	INNER JOIN movie ON movie.id = director.movie_id
--WHERE movie.rating = 'R';

--#8
--UPDATE movie
--SET
--	rating = 'PG-13'
--WHERE name LIKE '%Indiana%Jones%' AND year = 1984;
