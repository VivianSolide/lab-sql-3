-- 1. How many distinct (different) actors' last names are there?
SELECT COUNT(DISTINCT(last_name))
FROM actor;
-- 2. In how many different languages where the films originally produced?
-- 3. How many movies were not originally filmed in English?
SELECT COUNT(language_id != 1)
FROM film;
-- 4. Get 10 the longest movies from 2006.
SELECT length,
    title as longest_movies
FROM film
WHERE release_year = 2006
ORDER BY `length` DESC
LIMIT 10;
-- 5. How many days has been the company operating (check `DATEDIFF()` function)?
SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) as operating_days
FROM rental;
-- 6. Show rental info with additional columns month and weekday. Get 20.
SELECT * FROM rental;
-- 7. Add an additional column `day_type` with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *,
    CASE
        WHEN DAYOFWEEK(rental_date) > 5 THEN 'weekend'
        ELSE 'workday'
    END
FROM rental;
-- 8. How many rentals were in the last month of activity?
SELECT COUNT(rental_id) FROM rental WHERE MONTH(rental_date) = 8;