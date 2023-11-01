USE sakila;
-- Aggregates
-- How many movies were released in 2006?
SELECT COUNT(*) FROM `film` WHERE `release_year` = 2006;
-- What is the average runtime of all films?
SELECT AVG(`length`) as 'Average Runtime' from `film`;
-- Find the movies with the longest runtime, without using LIMIT.
SELECT MAX(`length`) as 'Longest Runtime' from `film`;
-- Using HAVING, reverse-alphabetically list the last names that are not repeated.
SELECT `last_name` from `actor` GROUP BY `last_name` HAVING COUNT(`last_name`) = 1  ORDER BY `last_name` DESC;
-- Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
SELECT `last_name`,  COUNT(`last_name`) as Frequency from `actor` GROUP BY `last_name` HAVING COUNT(`last_name`) > 1  ORDER BY COUNT(`last_name`) DESC;