USE sakila;

-- --                              Strona 109 Joining Two Tables

-- -- We use only one join syntax in this chapter. There are two more (LEFT and RIGHT
-- -- JOIN), and each gives you a different way to bring together data from two or more
-- -- tables. The syntax we use here is the INNER JOIN, which is the most commonly used
-- -- in daily activities. Let’s look at an example, and then we’ll explain more about how it
-- -- works:
-- Inner Join pozwala nam w tym przykładzie na połączenie dwóch tabel używając country_id

-- SELECT city, country FROM city INNER JOIN country
-- ON city.country_id = country.country_id
-- WHERE country.country_id < 5
-- ORDER BY country, city;


-- --                               Strona 180 Aliases

-- -- Aliases are nicknames. They give you a shorthand way of expressing a column, table,
-- -- or function name, allowing you to:
-- -- • Write shorter queries.
-- -- • Express your queries more clearly.
-- -- • Use one table in two or more ways in a single query.
-- -- • Access data more easily from programs.
-- -- • Use special types of nested queries, discussed in “Nested Queries” on page 215.

-- -- Column Aliases
-- -- Column aliases are useful for improving the expression of your queries, reducing the
-- -- number of characters you need to type, and making it easier to work with program‐
-- -- ming languages such as Python or PHP. Consider a simple, not-very-useful example:
-- SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM actor LIMIT 5; 

-- -- 

-- --                                Strona 187 The GROUP BY Clause

-- -- The GROUP BY clause groups output data for the purpose of aggregation. Particularly,
-- -- that allows us to use aggregate functions (covered in “Aggregate functions” on page
-- -- 193) on our data when our projection (that is, the contents of the SELECT clause) con‐
-- -- tains columns other than those within an aggregate function. GROUP BY is similar to
-- -- ORDER BY in that it takes a list of columns as an argument. However, these clauses are
-- -- evaluated at different times and are only similar in how they look, not how they
-- -- operate.
-- -- Let’s take a look at a few GROUP BY examples that will demonstrate what it can be used
-- -- for. In its most basic form, when we list every column we SELECT in GROUP BY, we end
-- -- up with a DISTINCT equivalent. We’ve already established that a first name is not a
-- -- unique identifier for an actor:
-- SELECT first_name FROM actor
-- WHERE first_name IN ('GENE', 'MERYL')
-- GROUP BY first_name;