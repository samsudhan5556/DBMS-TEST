CREATE DATABASE collegedb;

USE collegedb;
CREATE TABLE Students(
	StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT,
    City VARCHAR(50)
    );
DESC Students;
INSERT INTO Students(StudentID,Name,Email,Age,City)values
(1,'aparna','aparan@gmail.com',24,'chennai'),
(2,'sam','sam@gmail.com',25,'mumbai'),
(3,'chan','chan@gmail.com',26,'delhi'),
(4,'saran','saran@gmail.com',27,'bangalore');

SELECT * FROM Students;


SELECT Name
FROM Students
WHERE StudentID IN (
SELECT StudentID FROM Students
);

SELECT Name
FROM Students
WHERE Age > ANY (
SELECT Age FROM Students WHERE City = 'Chennai'
);

SELECT Name
FROM Students
WHERE Age > ALL (
SELECT Age FROM Students WHERE City = 'Delhi'
);

SELECT Name
FROM Students
WHERE EXISTS (
    SELECT 1
    FROM Students
    WHERE City = 'Bangalore'
);
