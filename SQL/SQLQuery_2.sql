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