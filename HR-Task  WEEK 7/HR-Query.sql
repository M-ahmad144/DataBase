SELECT 
    CONCAT(e.last_name, ', ', e.job_id) AS [Employee and Title]
FROM 
    employees e
    JOIN jobs j ON e.job_id = j.job_id;


SELECT 
	e.last_name ,e.salary
FROM 
	employees AS e
where 
	e.salary >1200



SELECT 
	e.last_name ,e.salary
FROM 
	employees AS e
where 
	e.salary >=5000 AND e.salary <=1200


	SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    YEAR(hire_date) = 1994;



	SELECT
    last_name
FROM
    employees
WHERE
    SUBSTRING(last_name, 3, 1) = 'a';


	SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%' AND last_name LIKE '%e%';



SELECT
    e.last_name,
    j.job_title AS job,
    e.salary
FROM
    employees AS e
JOIN
    jobs AS j ON e.job_id = j.job_id
WHERE
    j.job_title IN ('Sales Representative', 'Stock Clerk')
    AND e.salary NOT IN (2500, 3500, 7000);




	SELECT
    employee_id,
    last_name,
    salary,
    ROUND(salary * 1.155, 0) AS increased_salary
FROM
    employees;



SELECT 
    last_name AS Last_NAME,
    CEILING(DATEDIFF(MONTH, hire_date, GETDATE())) AS Month_Worked
FROM 
    employees
ORDER BY 
    Month_Worked;




	SELECT 
    last_name + ' earns $' + CAST(salary AS VARCHAR) + ' monthly but wants ' + CAST(salary * 3 AS VARCHAR) + ' as Dream Salary' AS Dream_Salaries
FROM 
    employees;




SELECT 
    FORMAT(hire_date, 'dddd, MMMM d, yyyy') AS Hire_Date,
    FORMAT(DATEADD(month, 6, hire_date) + ((8 - DATEPART(WEEKDAY, DATEADD(month, 6, hire_date))) % 7), 'dddd, MMMM d, yyyy') AS REVIEW
FROM 
    employees;



	SELECT 
    last_name,
    hire_date,
    DATENAME(WEEKDAY, hire_date) AS DAY
FROM 
    employees
ORDER BY 
    CASE 
        WHEN DATENAME(WEEKDAY, hire_date) = 'Monday' THEN 1
        WHEN DATENAME(WEEKDAY, hire_date) = 'Tuesday' THEN 2
        WHEN DATENAME(WEEKDAY, hire_date) = 'Wednesday' THEN 3
        WHEN DATENAME(WEEKDAY, hire_date) = 'Thursday' THEN 4
        WHEN DATENAME(WEEKDAY, hire_date) = 'Friday' THEN 5
        WHEN DATENAME(WEEKDAY, hire_date) = 'Saturday' THEN 6
        WHEN DATENAME(WEEKDAY, hire_date) = 'Sunday' THEN 7
    END;

    SELECT 
    LEFT(last_name, 8) AS Last_Name,
    REPLICATE('*', CAST(salary / 1000 AS INT)) AS Salary_Amount
FROM 
    employees
ORDER BY 
    Last_Name;





