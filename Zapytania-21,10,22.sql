USE sakila;

-- Column Aliases
-- Column aliases are useful for improving the expression of your queries, reducing the
-- number of characters you need to type, and making it easier to work with program‐
-- ming languages such as Python or PHP. Consider a simple, not-very-useful example:
SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM actor LIMIT 5; 