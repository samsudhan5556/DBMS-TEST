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
SELECT Name,City
FROM Students
WHERE Age>=25;

SELECT * FROM Students;

