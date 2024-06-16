create table Departments (DEPARTMENT_ID int,  DEPARTMENT_NAME varchar (max),  MANAGER_ID int, LOCATION_ID int)
select * from Departments
create table Employee ( EMPLOYEE_ID int,  FIRST_NAME  varchar(max),  LAST_NAME  varchar(max),  EMAIL varchar(max),  PHONE_NUMBER int,
 HIRE_DATE int,  JOB_ID varchar(max), SALARY int,  COMMISSION_PCT int,  MANAGER_ID int,  DEPARTMENT_ID int)
 select * from Employee

 create table Location ( LOCATION_ID int,  STREET_ADDRESS varchar(max),  POSTAL_CODE int,  CITY varchar(max), 
 STATE_PROVINCE varchar(max),  COUNTRY_ID varchar(max))
 select * from Location

 create table job_grades(GRADE_LEVEL varchar(max), LOWEST_SAL int, HIGHEST_SAL int)
 select * from  job_grades

 SELECT E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM Employee E, Departments D

SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_NAME, L.CITY, L.STATE_PROVINCE FROM Employee E JOIN Departments D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID 
JOIN 
Location L ON D.LOCATION_ID = L.LOCATION_ID;

SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY, J.GRADE_LEVEL FROM Employee E JOIN job_grades J ON E.SALARY BETWEEN J.LOWEST_SAL AND J.HIGHEST_SAL;

SELECT E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID,  D.DEPARTMENT_NAME FROM 
Employee E JOIN Departments D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID AND E.DEPARTMENT_ID IN (80 , 40) ORDER BY E.LAST_NAME;