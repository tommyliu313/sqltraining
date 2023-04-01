SELECT COUNT(*)
FROM city;

SELECT COUNT(rating)
FROM city;

SELECT COUNT(DISTINCT country_id)
FROM city;

SELECT MIN(population), MAX(population)
FROM country;

SELECT country_id, AVG(rating)
FROM city
GROUP BY country_id
HAVING AVG(rating) > 3.0;

SELECT name
FROM city
WHERE rating = (
    SELECT rating
    FROM city
    WHERE population > 20000000
)

SELECT name
FROM city
WHERE country_id IN(
    SELECT country_id
    FROM country
    WHERE population > 20000000
)

SELECT *
FROM city main_city
WHERE population > (
    SELECT AVG(population)
    FROM city average_city
    WHERE average_city.country_id = main.city.country_id
)

SELECT name
FROM country
WHERE EXISTS(
    SELECT *
    FROM city
    WHERE country_id = country.id
);

SELECT name
FROM cycling
WHERE country = 'DE'
UNION
SELECT name 
FROM skating
WHERE country = 'DE';



SELECT name
FROM cycling
WHERE country = 'DE'
EXCEPT
SELECT name
FROM skating
WHERE country = 'DE';