CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Grade INT,
    GPA FLOAT
);

INSERT INTO Students (StudentID, FirstName, LastName, Grade, GPA)
VALUES (1, 'John', 'Doe', 9, 3.5),
       (2, 'Jane', 'Smith', 10, 3.8),
       (3, 'Bob', 'Johnson', 11, 3.2);
       
SELECT * FROM Students
WHERE Grade = 10;

SELECT Grade, AVG(GPA)
FROM Students
GROUP BY Grade;

SELECT Grade, AVG(GPA)
FROM Students
GROUP BY Grade
HAVING AVG(GPA) > 3.5;

SELECT * FROM Students
ORDER BY LastName;
