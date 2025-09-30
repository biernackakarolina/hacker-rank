SELECT 
       CASE WHEN Marks >= 70 THEN Name
            ELSE NULL END AS Name,
       Grade,
       Marks
FROM Students s
LEFT JOIN Grades g
       ON s.marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY Grade DESC, Name, Marks;
