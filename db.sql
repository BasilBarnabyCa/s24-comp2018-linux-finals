CREATE DATABASE BB_finalexam;
USE BB_finalexam;

CREATE TABLE Student (
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    studentName VARCHAR(100),
    studentAge INT,
    studentGender VARCHAR(10),
    courseId INT
);

CREATE TABLE Course (
    courseId INT AUTO_INCREMENT PRIMARY KEY,
    courseName VARCHAR(100),
    courseScore INT,
    studentId INT,
    FOREIGN KEY (studentId) REFERENCES Student(studentId)
);


INSERT INTO Student (studentName, studentAge, studentGender, courseId) 
VALUES ('Basil Barnaby', 20, 'Male', 1), 
       ('Jane Doe', 22, 'Female', 2);

INSERT INTO Course (courseName, courseScore, studentId) 
VALUES ('Linux Administration', 95, 1), 
       ('Web Development', 90, 2);
