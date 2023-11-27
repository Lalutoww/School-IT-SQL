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
ADD PRIMARY KEY (ID,LastName);

-- таблица Orders с полета OrderID, OrderNumber, PersonID
create table Orders(
OrderID int not null primary key,
OrderNumber varchar(255) not null,
PersonID int not null
);
 
-- Създайте връзка между двете таблици чрез външен ключ
ALTER TABLE Orders
Add FOREIGN KEY (PersonID) REFERENCES Persons(ID)