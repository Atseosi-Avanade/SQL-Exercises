USE sakila;
-- List all actors.
SELECT * FROM `actor`;
-- Find the surname of the actor with the forename 'John'.
SELECT `first_name`, `last_name` FROM `actor` where `first_name` = 'John';
-- Find all actors with surname 'Neeson'.
SELECT `first_name`, `last_name` FROM `actor` where `last_name` = 'Neeson';
-- Find all actors with ID numbers divisible by 10.
SELECT `actor_id` FROM `actor` WHERE `actor_id` % 10 = 0;
-- What is the description of the movie with an ID of 100?
SELECT `description` FROM `film` WHERE `film_id` = 100;
-- Find every R-rated movie.
SELECT * FROM `film` WHERE `rating` = 'R';
-- Find every non-R-rated movie.
SELECT * FROM `film` WHERE `rating` != 'R';
-- Find the ten shortest movies.
SELECT * FROM `film` ORDER BY `length` LIMIT 10;
-- Find all movies that have deleted scenes.
SELECT * FROM `film` WHERE `special_features` LIKE '%Deleted Scenes%';
-- List all movies featuring a robot.
SELECT * FROM `film` WHERE `description` LIKE '%robot%';
-- List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
SELECT concat(first_name, ' ', last_name) as Full_name FROM `actor` WHERE `last_name` LIKE '%son' ORDER BY `first_name`;
-- List the name of every language in reverse-alphabetical order.
select `name` from `language` ORDER BY `name` DESC;
-- How many distinct countries are there?
SELECT COUNT(DISTINCT `country`) as Count_Countries from `country`;
