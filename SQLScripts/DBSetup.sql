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

-- 2/2/24 - 2/4/24

--  When Seeding the following data make sure that the tables are populated as expected/ how you want.
SELECT * FROM Breads;
SELECT * FROM Countries;
SELECT * FROM CountryBreads;

ALTER TABLE Breads
ALTER COLUMN Description NVARCHAR(255);

INSERT INTO Breads (Name, Recipe, Description)
VALUES
    ('Sourdough', 'Sourdough Recipe', 'Classic sourdough bread with a tangy flavor.'),
    ('French Baguette', 'Baguette Recipe', 'Long and crusty French bread.'),
    ('Whole Wheat', 'Whole Wheat Recipe', 'Nutritious bread made with whole wheat flour.'),
    ('Ciabatta', 'Ciabatta Recipe', 'Italian bread known for its soft texture.'),
    ('Rye Bread', 'Rye Bread Recipe', 'Dense and flavorful bread made with rye flour.'),
    ('Garlic Naan', 'Naan Recipe', 'Indian bread with garlic flavor, perfect for curries.'),
    ('Challah', 'Challah Recipe', 'Jewish braided bread often enjoyed on holidays.'),
    ('Focaccia', 'Focaccia Recipe', 'Italian flatbread topped with herbs and olive oil.'),
    ('Pumpernickel', 'Pumpernickel Recipe', 'Dark and heavy German bread with a distinct taste.'),
    ('Brioche', 'Brioche Recipe', 'Rich and sweet French bread with a high egg and butter content.');

INSERT INTO Countries (Name, Description) VALUES ('United States', 'Land of the free and home of the brave');
INSERT INTO Countries (Name, Description) VALUES ('Canada', 'Great white north');
INSERT INTO Countries (Name, Description) VALUES ('United Kingdom', 'Tea and crumpets');
INSERT INTO Countries (Name, Description) VALUES ('Australia', 'Down under');
INSERT INTO Countries (Name, Description) VALUES ('Japan', 'Land of the rising sun');
INSERT INTO Countries (Name, Description) VALUES ('Brazil', 'Carnival and samba');
INSERT INTO Countries (Name, Description) VALUES ('India', 'Spices and colors');
INSERT INTO Countries (Name, Description) VALUES ('Italy', 'Pizza and pasta');
INSERT INTO Countries (Name, Description) VALUES ('France', 'Eiffel Tower and baguettes');
INSERT INTO Countries (Name, Description) VALUES ('China', 'Great Wall and dumplings');

INSERT INTO CountryBreads (CountryId, BreadId) VALUES (1, 13);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (2, 14);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (3, 15);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (4, 16);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (5, 17);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (6, 18);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (7, 19);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (8, 20);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (9, 21);
INSERT INTO CountryBreads (CountryId, BreadId) VALUES (10, 22);

INSERT INTO CountryBreads (CountryId, BreadId) VALUES 
        (3, 13),
        (3,14);

