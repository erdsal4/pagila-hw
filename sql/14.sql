/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT title 
FROM (
    SELECT title, name
    FROM film
    JOIN film_category USING (film_id)
    JOIN category USING (category_id)
) t
WHERE t.name='Family'
ORDER BY title;
