-- Task 1

SELECT first_name, SUM(num) AS sum
FROM baby_names
GROUP BY first_name 
HAVING COUNT(DISTINCT year) = 101
ORDER BY sum DESC;

-- Task 2

SELECT first_name, SUM(num),
    CASE WHEN COUNT(year) > 80 THEN 'Classic'
        WHEN COUNT(year) > 50 THEN 'Semi-classic'
        WHEN COUNT(year) > 20 THEN 'Semi-trendy'
        ELSE 'Trendy' END AS popularity_type
FROM baby_names
GROUP BY first_name
ORDER BY first_name;

-- Task 3

SELECT
    RANK() OVER(ORDER BY SUM(num) DESC) AS name_rank,
    first_name, SUM(num)
FROM baby_names
WHERE sex = 'F'
GROUP BY first_name
LIMIT 10;