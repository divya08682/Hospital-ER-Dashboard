-- Average Wait Time
SELECT AVG(Wait_Time_Minutes) AS Avg_Wait_Time
FROM hospital_er_data;

-- Total Revenue
SELECT SUM(Bill_Amount) AS Total_Revenue
FROM hospital_er_data;

-- Department Wise Patients
SELECT Department, COUNT(*) AS Total_Patients
FROM hospital_er_data
GROUP BY Department;

-- Critical Patients
SELECT COUNT(*) AS Critical_Cases
FROM hospital_er_data
WHERE Severity_Level = 'Critical';