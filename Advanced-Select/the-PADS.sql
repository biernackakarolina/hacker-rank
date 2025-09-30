SELECT CONCAT(Name, '(', UPPER(LEFT(Occupation, 1)), ')')
FROM OCCUPATIONS
ORDER BY 1;

SELECT 
    CONCAT('There are a total of', ' ', COUNT(Name), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(name), Occupation;
