SELECT emp."Emp_No", emp."Last_Name", emp."First_Name", emp."Sex", sal."Salary"
FROM "Employees" emp
LEFT JOIN "Salaries" sal
ON emp."Emp_No" = sal."Emp_No";

SELECT "First_Name", "Last_Name", "Hire_Date"
FROM "Employees"
WHERE "Hire_Date" BETWEEN '1986-01-01' AND '1986-12-31';

SELECT dmgr."Dept_No", d."Dept_Name", dmgr."Emp_No", e."Last_Name", e."First_Name"
FROM "Dept_Manager" dmgr
INNER JOIN "Departments" d ON dmgr."Dept_No" = d."Dept_No"
INNER JOIN "Employees" e ON dmgr."Emp_No" = e."Emp_No";

SELECT de."Dept_No", e."Emp_No", e."Last_Name", e."First_Name", d."Dept_Name"
FROM "Dept_Emp" de
INNER JOIN "Employees" e ON de."Emp_No" = e."Emp_No"
INNER JOIN "Departments" d ON de."Dept_No" = d."Dept_No";

SELECT "First_Name", "Last_Name", "Sex"
FROM "Employees"
WHERE "First_Name" = 'Hercules' AND "Last_Name" LIKE 'B%';

SELECT e."Emp_No", e."Last_Name", e."First_Name"
FROM "Employees" e 
INNER JOIN "Dept_Emp" de ON e."Emp_No" = de."Emp_No"
INNER JOIN "Departments" d ON de."Dept_No" = d."Dept_No"
WHERE d."Dept_Name" ='Sales';

SELECT e."Emp_No", e"Last_Name", e"First_Name", d."Dept_Name"
FROM "Employees" e
INNER JOIN "Dept_Emp" de ON e."Emp_No" = de."Emp_No"
INNER JOIN "Departments" d ON de."Dept_No" = d."Dept_No"
WHERE d."Dept_Name" IN ('Sales', 'Development');

SELECT "Last_Name", COUNT(*) AS Frequency
FROM "Employees"
GROUP BY "Last_Name"
ORDER BY Frequency DESC;