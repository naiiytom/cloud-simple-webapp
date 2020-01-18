CREATE DATABASE cloudDB;

use cloudDB;

CREATE TABLE department (deptID VARCHAR(3), 
    deptName VARCHAR(30) NOT NULL,
    PRIMARY KEY (deptID));

CREATE TABLE students (stdID VARCHAR(11) NOT NULL,
    fname VARCHAR(30) NOT NULL,
    lname VARCHAR(30) NOT NULL,
    deptID VARCHAR(3) NOT NULL,
    PRIMARY KEY (stdID),
    FOREIGN KEY (deptID) REFERENCES department(deptID));


INSERT INTO department VALUES ('D01', 'Computer Science');
INSERT INTO department VALUES ('D02', 'Biology');
INSERT INTO department VALUES ('D03', 'Physics');
INSERT INTO department VALUES ('D04', 'Chemistry');
INSERT INTO department VALUES ('D05', 'Mathematics');