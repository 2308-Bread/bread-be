-- 1/31/24 - EB
CREATE DATABASE BreadApiDatabase
GO

USE BreadApiDatabase
GO

CREATE TABLE Users
(
    UserId INT IDENTITY(1, 1) PRIMARY KEY
    , FirstName NVARCHAR(50)
    , LastName NVARCHAR(50)
    , Email NVARCHAR(50)
);

CREATE TABLE Breads
(
    BreadId INT IDENTITY(1, 1) PRIMARY KEY
    , Name NVARCHAR(50)
    , Recipe NVARCHAR(50)
    , Description NVARCHAR(50)
);

CREATE TABLE UserBreads
(
    UserId INT
    , BreadId INT
);

-- 2/1/24

CREATE TABLE Countries
(
    CountryId INT IDENTITY(1, 1) PRIMARY KEY
    , Name NVARCHAR(50)
    , Description NVARCHAR(50)
);

CREATE TABLE CountryBreads
(
    CountryBreadId INT IDENTITY(1, 1) PRIMARY KEY
    , CountryId NVARCHAR(50)
    , BreadId NVARCHAR(50)
);