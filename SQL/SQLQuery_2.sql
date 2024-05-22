CREATE TABLE author (
    id int IDENTITY(1, 1) PRIMARY KEY not null,
    name VARCHAR(50) not null,
    email VARCHAR(20) not null
);

-- DDL (CREATE, ALTER, DROP)
-- DML (INSERT, UPDATE, DELETE)
--DQL (SELECT)

SELECT * FROM author;


ALTER TABLE author 
ADD age int not null


INSERT INTO author(name, email)
VALUES ('Balogun Rukayat' , 'rb@gmail.com');


SELECT * FROM author;


DELETE author 
where id  = 3;


SELECT * FROM SYS.tables

--- SELECT EVERYTHING(*) FROM THE TABLE PERSON.PERSON

SELECT * FROM Person.Person;

-- FIRST NAME, MIDDLE NAME, LAST NAME -19972

SELECT FirstName, MiddleName, LastName FROM Person.Person;

--13
SELECT FirstName, MiddleName, LastName FROM Person.Person
where LastName = 'Zimmerman';

SELECT FirstName, MiddleName, LastName FROM Person.Person 
WHERE MiddleName IS NOT NULL;

SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%';

SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%y';

SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE 'A_y';

SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE '%p';

SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE 'P__%';



SELECT * FROM sys.tables;


-- ORDER BY

SELECT * FROM Sales.SalesOrderDetail;

SELECT * FROM Sales.SalesOrderDetail AS SOD
ORDER BY UnitPrice DESC;

SELECT * FROM Sales.SalesPerson ORDER BY SalesQuota, SalesYTD DESC;

SELECT * FROM HumanResources.Employee;

SELECT JobTitle, SUM(SickLeaveHours) AS 'Count' FROM HumanResources.Employee
GROUP BY JobTitle
ORDER BY Count DESC;

-- ORDER OF OPERATIONS
-- FROM HumanResources.Employee
-- GROUP BY JobTitle
-- SELECT JobTitle, SUM(SickLeaveHours) AS 'Count'
-- ORDER BY Count DESC;


SELECT JobTitle, AVG(SickLeaveHours) AS 'Count' FROM HumanResources.Employee
GROUP BY JobTitle
ORDER BY Count DESC;


SELECT JobTitle, MIN(SickLeaveHours) AS 'Count' FROM HumanResources.Employee
GROUP BY JobTitle
ORDER BY Count ASC;

SELECT Max(SickLeaveHours) AS 'Sickleave' FROM HumanResources.Employee


SELECT JobTitle, Count(*) AS 'Count' FROM HumanResources.Employee
GROUP BY JobTitle
ORDER BY Count DESC;

SELECT JobTitle, Count(*) AS 'Count' FROM HumanResources.Employee
GROUP BY JobTitle
ORDER BY Count DESC;

SELECT DISTINCT(COUNT(JobTitle)) FROM HumanResources.Employee;


Stocker| Janitor | Buyer
 -- IN
SELECT * FROM HumanResources.Employee
WHERE JobTitle ='Buyer'

SELECT * FROM HumanResources.Employee
WHERE JobTitle ='Janitor'

SELECT * FROM HumanResources.Employee
WHERE JobTitle ='Stocker'


SELECT * FROM HumanResources.Employee
WHERE JobTitle IN ('Stocker', 'Janitor' ,'Buyer')


SELECT * FROM HumanResources.Employee
WHERE VacationHours NOT BETWEEN 50 AND 75;


SELECT * FROM HumanResources.Employee
WHERE JobTitle IN ('Stocker', 'Janitor' ,'Buyer')
OR VacationHours NOT BETWEEN 50 AND 75;

-- TRUE & TRUE - TRUE
-- FALSE & TRUE - FALSE
-- TRUE & FALSE - FALSE
-- FALSE & FALSE - FALSE


--JOIN
--INNER JOIN, OUTER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN

SELECT * FROM [HumanResources].[Employee] AS HRE 

SELECT * FROM [Person].[Person] PP

SELECT * FROM [HumanResources].[Employee] AS HRE  
INNER JOIN
[Person].[Person] PP
ON HRE.BusinessEntityID = PP.BusinessEntityID;

SELECT * FROM [HumanResources].[Employee] AS HRE  
LEFT JOIN
[Person].[Person] PP
ON HRE.BusinessEntityID = PP.BusinessEntityID;

SELECT * FROM [Person].[Person] PP
RIGHT JOIN
[HumanResources].[Employee] AS HRE  
ON HRE.BusinessEntityID = PP.BusinessEntityID;


SELECT * FROM [Person].[Person] PP
FULL JOIN
[HumanResources].[Employee] AS HRE  
ON HRE.BusinessEntityID = PP.BusinessEntityID;


SELECT * FROM [Person].[Person] PP
LEFT OUTER JOIN
[HumanResources].[Employee] AS HRE  
ON HRE.BusinessEntityID = PP.BusinessEntityID;
