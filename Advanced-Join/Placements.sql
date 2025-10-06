SELECT 
       s.name
FROM Students s
JOIN Packages p 
  ON s.id = p.id
JOIN Friends f 
  ON s.id = f.id
JOIN Packages fp
  ON f.friend_id = fp.id
WHERE p.salary < fp.salary
ORDER BY fp.salary;
