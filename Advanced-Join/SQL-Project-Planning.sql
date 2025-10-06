--this project is part of an "Advanced Join" section but I used window funcion instead as I prefer this solution 

WITH 
    project_gaps AS (
        SELECT 
            (datediff(End_Date, (select min(End_Date) from Projects) ) + 1) - (row_number() over (order by End_Date)) as 'gaps',
            Start_Date,
            End_Date
        FROM Projects)
    
SELECT MIN(Start_Date), MAX(End_Date)
FROM project_gaps g
GROUP BY g.gaps
ORDER BY COUNT(*), MIN(Start_Date);
