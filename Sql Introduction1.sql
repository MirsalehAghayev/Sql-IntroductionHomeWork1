CREATE DATABASE DemoApp
USE DemoApp

CREATE TABLE Users
(
   Id int PRIMARY KEY IDENTITY(1,1),
   Name nvarchar(25) NOT NULL,
   Surname nvarchar(30) NOT NULL,
   Email nvarchar(50) UNIQUE,
   RegistrationDate DATETIME CHECK('2022-10-11'>RegistrationDate) DEFAULT('2022-10-11'),
   ContactNumber nvarchar(40) DEFAULT('+994000000000'),
   Age int CHECK(Age>18),
   Adress nvarchar(100)
)
	SELECT*FROM Users

INSERT INTO Users
VALUES('Mirsaleh','Agayev','mirsalehagayev52@gmail.com','2022-10-10','+99400059687458',22,'Baku,')

CREATE TABLE Categories
(
   Id int PRIMARY KEY IDENTITY(1,1),
   Name nvarchar(30) NOT NULL,
   Slug nvarchar(50) UNIQUE,
   CreatedAt DATETIME CHECK('2022-10-11'>CreatedAt) DEFAULT('2022-10-11'),
   IsActive nvarchar(50),
)

INSERT INTO Categories
VALUES('random1','random1','2022-10-10','bool')    
  --SELECT Name,Slug ,CreatedAt,IsActive FROM Categories
	SELECT*FROM Categories

SELECT Name, Surname,Email FROM Users	   
SELECT Name,IsActive FROM Categories