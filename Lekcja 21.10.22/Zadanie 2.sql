-- Inner Join pozwala nam w tym przykładzie na połączenie dwóch tabel używając actor_id i film_id, actor_id pokazuje nam imię i nazwisko aktorów AFFAIR PREJUDICE
--  a film_id pokazuje nam nazwę filmu który dzięki where wyświetlna nam tylko tabelę jednego filmu.
USE sakila;
SELECT ac.actor_id, ac.first_name, ac.last_name, fl.title FROM
actor AS ac INNER JOIN film_actor AS fla USING (actor_id)
INNER JOIN film AS fl USING (film_id)
WHERE fl.title = 'AFFAIR PREJUDICE';


-- | actor_id | first_name | last_name | title |

-- | 41 | JODIE | DEGENERES | AFFAIR PREJUDICE |
-- | 81 | SCARLETT | DAMON | AFFAIR PREJUDICE |
-- | 88 | KENNETH | PESCI | AFFAIR PREJUDICE |
-- | 147 | FAY | WINSLET | AFFAIR PREJUDICE |
-- | 162 | OPRAH | KILMER | AFFAIR PREJUDICE |
