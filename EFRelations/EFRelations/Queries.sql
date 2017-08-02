
USE [Remi]
GO

CREATE TABLE [dbo].Persons(
	PersonID int  IDENTITY(1,1)  NOT NULL ,
	[FirstName] varchar(255) NOT NULL,
	[LastName] varchar(255) NOT NULL,
	PRIMARY KEY(PersonID)
) 
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);


INSERT INTO [dbo].[Persons]
           ([FirstName]
           ,[LastName])
     VALUES
           ('Remi'           , 'Desreumaux')

INSERT INTO [dbo].[Orders]
           ([OrderID]
           ,[OrderNumber]
           ,[PersonID])
     VALUES
           (1,1,1)

