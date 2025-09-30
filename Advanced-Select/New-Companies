SELECT 
    c.company_code,
    c.founder,
    e.total_lead_managers,
    e.total_senior_managers,
    e.total_managers,
    e.total_employees
FROM (
    SELECT DISTINCT company_code, founder
    FROM Company) c
LEFT JOIN (SELECT 
                company_code, 
                COUNT(DISTINCT lead_manager_code) AS total_lead_managers,
                COUNT(DISTINCT senior_manager_code) AS total_senior_managers,
                COUNT(DISTINCT manager_code) AS total_managers,
                COUNT(DISTINCT employee_code) AS total_employees
          FROM Employee
          GROUP BY 1) e
ON c.company_code = e.company_code
ORDER BY 1;
