GO
CREATE DATABASE NguyenTranAnhTuanDB
GO
USE NguyenTranAnhTuanDB
GO
CREATE TABLE UserAccount
(
    ID INT NOT NULL PRIMARY KEY,
    UserName [NVARCHAR](50),
    Password [NVARCHAR](50),
    Status [NVARCHAR](50)
);
GO
CREATE TABLE Category
(
    ID INT NOT NULL PRIMARY KEY,
    Name INT,
    Description [NVARCHAR](200)
);
GO
CREATE TABLE Product
(
    ID INT NOT NULL PRIMARY KEY,
    Name INT,
    UnitCost [NVARCHAR](200),
    Quantity [NVARCHAR](500),
    Image [NVARCHAR](200),
	Description [NVARCHAR](200),
    Status [NVARCHAR](200),
    IDCategory INT NOT NULL,
	FOREIGN KEY(IDCategory) REFERENCES dbo.Category(ID)
);