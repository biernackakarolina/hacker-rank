WITH different_xy AS (
    SELECT f1.x, f1.y
    FROM Functions f1
    INNER JOIN Functions f2
        ON f1.x = f2.y AND f2.x = f1.y
    WHERE f1.x < f1.y),

    same_xy AS (
    SELECT x, y
    FROM Functions
    GROUP BY x, y
    HAVING COUNT(*) > 1)
    
SELECT *
FROM different_xy
UNION 
SELECT *
FROM same_xy
ORDER BY x;
