CREATE DATABASE hr;
USE hr;

-- imported dataset by wizard --

                                                       --  Basic Dataset Understanding --

-- Total Employees --

SELECT COUNT(*) AS total_employees
FROM hr_employee_attrition;

-- Attrition Distribution 

SELECT Attrition, COUNT(*) AS employee_count
FROM hr_employee_attrition
GROUP BY Attrition;

-- Attrition Rate --

SELECT 
ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS attrition_rate
FROM hr_employee_attrition;

                                                          --  Demographic Analysis --
                                                          
   -- Employees by Gender --
   
SELECT Gender, COUNT(*) AS total_employees
FROM hr_employee_attrition
GROUP BY Gender;                  

-- Attrition by Gender --

SELECT Gender, Attrition, COUNT(*) AS employee_count
FROM hr_employee_attrition
GROUP BY Gender, Attrition
ORDER BY Gender;           

-- Attrition by Marital Status --

SELECT Marital_Status, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Marital_Status;   

							        	  -- Department & Job Analysis --
                   
-- Employees by Department--
                                  
SELECT Department, COUNT(*) AS total_employees
FROM hr_employee_attrition
GROUP BY Department
ORDER BY total_employees DESC;


-- Attrition by Department--

SELECT Department, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY employees_left DESC;

-- Attrition by Job Role --

SELECT Job_Role, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Job_Role
ORDER BY employees_left DESC;


                                  --         Salary Analysis --
                                  
                                  
 -- Average Salary --
 
 SELECT ROUND(AVG(Monthly_Income),2) AS avg_salary
FROM hr_employee_attrition;

-- Average Salary by Department --

SELECT Department, ROUND(AVG(Monthly_Income),2) AS avg_salary
FROM hr_employee_attrition
GROUP BY Department
ORDER BY avg_salary DESC;

-- Salary vs Attrition --

SELECT Attrition, ROUND(AVG(Monthly_Income),2) AS avg_salary
FROM hr_employee_attrition
GROUP BY Attrition;


                                           -- Experience Analysis --

-- Average Experiance --

SELECT ROUND(AVG(Total_Working_Years),2) AS avg_experience
FROM hr_employee_attrition;

-- Attrition by Years at Company --

SELECT YearsAtCompany, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

-- Employees by Job Level --

SELECT Job_Level, COUNT(*) AS total_employees
FROM hr_employee_attrition
GROUP BY Job_Level
ORDER BY Job_Level;

											-- Work Environment Analysis --
										
-- Attrition vs Overtime --

SELECT Over_Time, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Over_Time;

-- Attrition vs Work Life Balance --

SELECT Work_Life_Balance, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Work_Life_Balance
ORDER BY Work_Life_Balance;

-- Attrition vs Job Satisfaction --

SELECT Job_Satisfaction, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Job_Satisfaction
ORDER BY Job_Satisfaction;

                                                -- Career Growth Analysis --
									
 -- Attrition by Promotion Gap--
 
 SELECT YearsSinceLastPromotion, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

-- Attrition by Manager Tenure --

SELECT Years_With_Curr_Manager, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Years_With_Curr_Manager
ORDER BY Years_With_Curr_Manager;

                                             -- Performance Analysis --
                                             
 -- Attrition by Performance Rating --
 
 SELECT Performance_Rating, COUNT(*) AS employees_left
FROM hr_employee_attrition
WHERE Attrition='Yes'
GROUP BY Performance_Rating;
											