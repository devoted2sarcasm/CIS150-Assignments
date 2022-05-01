Kenneth Page
CIS150-Winter2022-Bates
Commands for final project

#1
/*
SELECT dictionary.language
FROM dictionary
  LEFT JOIN occurs ON occurs.word = dictionary.word
WHERE COUNT(occurs.url) > 1000;
*/

#2
/*
SELECT MAX(COUNT(dictionary.word)), occurs.url
FROM dictionary
LEFT JOIN occurs ON occurs.word = dictionary.word;
*/

#3
/*
SELECT dictionary.language as 'Monolingual in:', occurs.url
FROM dictionary
  LEFT JOIN occurs ON occurs.word = dictionary.word
WHERE occurs.language == 1;
*/




#4 - create view
/*
CREATE VIEW Total_ratings
AS
	SELECT COUNT(movie.rating), movie.rating from Movie
	GROUP BY movie.rating
	ORDER BY COUNT(movie.rating) DESC;
  */

#5 - create trigger
/*
CREATE TRIGGER movie.only_top_200
ON movie
AFTER INSERT
AS
BEGIN
	DELETE * FROM Movie
	WHERE earnings_rank > 200;
*/

#6 - create CTE
/*
WITH acted_in (movieName, actorName)
AS
(SELECT movie.name, person.name
FROM actor
INNER JOIN movie on movie.id = actor.movie_id
INNER JOIN person ON person.id = actor.actor_id
ORDER BY movie.id)
SELECT movieName, actorName
FROM acted_in
ORDER BY movieName;
*/
