CREATE DATABASE Fitness ;
USE Fitness;

-- Creating Table of Trainer and its Information 
CREATE TABLE Trainer (
    trainerID INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL
);

SELECT * FROM Trainer;

-- Creating Table for Member and  Informations of member
CREATE TABLE Member (
    memberID INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    trainerID INT,
    FOREIGN KEY (trainerID) REFERENCES Trainer(trainerID)
);

SELECT * FROM Member;

-- Creating Payment Table for Recode Payment of member 
CREATE TABLE Payment (
    paymentID INT PRIMARY KEY,
    memberID INT,
    amount DECIMAL(10,2) NOT NULL,
    paymentDate DATE NOT NULL,
    FOREIGN KEY (memberID) REFERENCES Member(memberID)
);

SELECT * FROM Payment;

-- Creating Injury Table to Record Injuries
CREATE TABLE Injury (
    injuryID INT PRIMARY KEY,
    memberID INT,
    trainerID INT,
    injuryName VARCHAR(200) NOT NULL,
    injuryDate DATE NOT NULL,
    FOREIGN KEY (memberID) REFERENCES Member(memberID),
    FOREIGN KEY (trainerID) REFERENCES Trainer(trainerID)
);

SELECT * FROM Injury;

-- Creating Attendence to record Attendance of member and Trainer also 
CREATE TABLE Attendance (
    attendanceID INT PRIMARY KEY,
    personID INT NOT NULL,
    personType VARCHAR(50) CHECK (personType IN ('Member', 'Trainer')),
    date DATE NOT NULL,
    checkInTime TIME NOT NULL,
    checkOutTime TIME,
    FOREIGN KEY (personID) REFERENCES Member(memberID)
        ON DELETE CASCADE,
    CONSTRAINT valid_checkout CHECK (checkOutTime > checkInTime)
);


SELECT * FROM Attendance;



-- inserting values in Trainer Table
INSERT INTO Trainer (trainerID, name, specialization) VALUES
(1, 'Vikas Kumar', 'Strength Training'),
(2, 'JAman Yadav', 'Cardio & HIIT');


-- inserting values of memebers we have
INSERT INTO Member (memberID, name, age, trainerID) VALUES
(1, 'Rajat Kumar', 24, 1),
(2, 'vinay', 21, 2),
(3, 'vishal', 23, NULL); 

-- inseting values into Payment table to record payment
INSERT INTO Payment (paymentID, memberID, amount, paymentDate) VALUES
(1001, 1, 100.00, '2024-01-05'),
(1002, 2, 120.00, '2024-02-10'),
(1003, 1, 90.00, '2024-03-15');

SELECT * FROM Payment;


-- injury Record
INSERT INTO Injury (injuryID, memberID, trainerID, injuryName, injuryDate) VALUES
(2001, 1, 1, 'Ankle Sprained ', '2024-02-01'),
(2002, 2, 2, 'Shoulder Strain', '2024-03-10');

SELECT * FROM Injury;


-- Example for checking the details.
-- lets get the details of member and their assigned Trainer 
SELECT 
    m.memberID,
    m.name AS member_name,
    m.age,
    t.name AS trainer_name,
    t.specialization
FROM Member m
LEFT JOIN Trainer t ON m.trainerID = t.trainerID;

-- injury details of memberID 2
SELECT 
    m.name AS member_name,
    i.injuryName,
    i.injuryDate,
    t.name AS recorded_by_trainer
FROM Injury i
JOIN Member m ON i.memberID = m.memberID
JOIN Trainer t ON i.trainerID = t.trainerID
WHERE m.memberID = 2
ORDER BY i.injuryDate DESC;



