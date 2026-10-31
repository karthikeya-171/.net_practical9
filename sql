CREATE DATABASE PlacementDB;
GO

USE PlacementDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    StudentName VARCHAR(100),
    Department VARCHAR(50),
    CompanyName VARCHAR(100),
    Package DECIMAL(10,2),
    PlacementStatus VARCHAR(20)
);

INSERT INTO Students
(StudentName, Department, CompanyName, Package, PlacementStatus)
VALUES
('Rahul', 'CSE', 'TCS', 4.5, 'Placed'),
('Priya', 'IT', 'Infosys', 5.2, 'Placed'),
('Arjun', 'ECE', 'NULL', 0, 'Not Placed'),
('Sneha', 'CSE', 'Wipro', 6.0, 'Placed'),
('Kiran', 'EEE', 'NULL', 0, 'Not Placed');
