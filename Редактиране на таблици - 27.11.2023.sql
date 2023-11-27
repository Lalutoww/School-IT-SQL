-- Създайте база данни с име db_new.
create schema db_new;
use db_new;

-- Създайте таблица Persons.
create table Persons(
ID int NOT NULL PRIMARY KEY,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int
);

-- Премахнете първичния ключ 
Alter table Persons Drop Primary Key;

-- Добавете отново първичен ключ
ALTER table Persons ADD Primary Key(ID);

-- Премахнете първичния ключ
Alter table Persons Drop Primary Key;

-- Създайте сложен първичен ключ, съставен от полетата ID,LastName
ALTER TABLE Persons
ADD PRIMARY KEY (ID);

-- Създайте таблица Orders с полета OrderID, OrderNumber, PersonID
create table Orders(
OrderID int not null AUTO_INCREMENT primary key,
OrderNumber varchar(255) not null,
PersonID int not null
);
 
-- Създайте връзка между двете таблици чрез външен ключ
ALTER TABLE Orders
Add FOREIGN KEY (PersonID) REFERENCES Persons(ID);

-- Премахнете връзката като премахнете външния ключ
ALTER TABLE Orders
DROP FOREIGN KEY orders_ibfk_1;

-- Създайте отново връзката
ALTER TABLE Orders
Add FOREIGN KEY (PersonID) REFERENCES Persons(ID);

-- Направете упражнението към урока и след това чрез заявки въведете по 3 записа в двете таблици.

-- 1
INSERT INTO Persons(ID, LastName, FirstName, Age)
VALUES (1, 'Lalutov', 'Martin', 18);

INSERT INTO Orders(OrderNumber, PersonID)
VALUES ('4af9dfba-71f0-4086-b97d-14d0b6c87d2e', 1);

--  2
INSERT INTO Persons(ID, LastName, FirstName, Age)
VALUES (2, 'Dimitrov', 'Ivan', 23);

INSERT INTO Orders(OrderNumber, PersonID)
VALUES ('539c3198-62cf-45a2-b185-36bbe4c49ea6', 2);


-- 3
INSERT INTO Persons(ID, LastName, FirstName, Age)
VALUES (3, 'Petrov', 'Kaloyan', 34);

INSERT INTO Orders(OrderNumber, PersonID)
VALUES ('d006ee5e-7f4f-4e6d-bbdd-0cf52080446f', 3);