-- 1
create DATABASE Users;
use Users;


create TABLE Users (
ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Username varchar(50) NOT NULL,
Email varchar(100) NOT NULL,
Age int
);

-- 2
INSERT INTO Users(Username, Email, Age)
VALUES('Ivan', 'ivan@abv.bg', 23);

INSERT INTO Users(Username, Email, Age)
VALUES('Alex', 'alex@gmail.com', 18);

INSERT INTO Users(Username, Email, Age)
VALUES('Yordan', 'dani@gmail.com', 35);

INSERT INTO Users(Username, Email, Age)
VALUES('Anton', 'anton@abv.bg', 48);

INSERT INTO Users(Username, Email, Age)
VALUES('Sani', 'sani@gmail.com', 27);

-- 3 
SELECT * FROM Users
ORDER BY Age DESC
LIMIT 3;

-- 4
SELECT Email,Age FROM Users
WHERE Email LIKE '%@gmail.com'
ORDER BY Age DESC;

-- 5
SELECT Username,Age FROM Users
WHERE Age >= 28
ORDER BY Username ASC;

-- 6 
INSERT INTO Users(Username, Email, Age)
VALUES('Simeon', 'moni@softuni.bg', 29);

SELECT * FROM Users
ORDER BY Username DESC;

-- 7
UPDATE Users
SET Email = 'ivan@softuni.bg'
WHERE Username = 'Ivan';

UPDATE Users
SET Age = 28
WHERE Username = 'Alex';

SELECT * FROM Users;

-- 8
DELETE FROM Users 
WHERE Email LIKE '%@softuni.bg';

SELECT * FROM Users;
