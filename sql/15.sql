/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT t.name, t.sum 
FROM (
    SELECT c.name as name, l.name as language, count(*) as "sum"
    FROM film
    JOIN language as l USING (language_id)
    JOIN film_category as f  USING (film_id)
    JOIN category as c USING (category_id)
    GROUP BY c.name, l.name
) t
WHERE t.language='English'
ORDER BY t.name;

