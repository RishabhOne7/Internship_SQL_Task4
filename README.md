# SQL Developer Internship - Task 4: Aggregate Functions & Grouping

## 📌 Objective
Learn to use aggregate functions (SUM, COUNT, AVG) and GROUP BY to summarize and analyze data.

---

## 🗄️ Database: CompanyDB

### Tables:
1. **Departments**  
   - `dept_id` (Primary Key)  
   - `dept_name`  

2. **Employees**  
   - `emp_id` (Primary Key)  
   - `name`  
   - `dept_id` (Foreign Key)  
   - `salary`  

---

## 🛠️ Steps Performed
1. Created database `CompanyDB`  
2. Created tables with primary and foreign keys  
3. Inserted sample data into tables  
4. Wrote aggregate function queries using:  
   - SUM  
   - COUNT  
   - AVG  
   - GROUP BY  
   - HAVING  
   - COUNT DISTINCT  

---

## 📊 Sample Queries

### SUM (Total salary per department)
```sql
SELECT dept_id, SUM(salary) AS total_salary

SELECT dept_id, COUNT(*) AS num_employees
FROM Employees
GROUP BY dept_id;

SELECT dept_id, COUNT(*) AS num_employees
FROM Employees
GROUP BY dept_id;

SELECT dept_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 50000;


SELECT dept_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 50000;

FROM Employees
GROUP BY dept_id;

SELECT COUNT(DISTINCT salary) AS distinct_salaries
FROM Employees;

