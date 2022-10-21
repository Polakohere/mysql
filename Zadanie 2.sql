-- Inner Join pozwala nam w tym przykładzie na połączenie dwóch tabel używając actor_id i film_id, actor_id pokazuje nam imię i nazwisko aktorów AFFAIR PREJUDICE
--  a film_id pokazuje nam nazwę filmu który dzięki where wyświetlna nam tylko tabelę jednego filmu.
USE sakila;
SELECT ac.actor_id, ac.first_name, ac.last_name, fl.title FROM
-> actor AS ac INNER JOIN film_actor AS fla USING (actor_id)
-> INNER JOIN film AS fl USING (film_id)
-> WHERE fl.title = 'AFFAIR PREJUDICE';