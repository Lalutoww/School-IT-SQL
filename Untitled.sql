create database students;
drop database students;
USE students;
CREATE TABLE languages (
    id INT NOT NULL AUTO_INCREMENT,
    language VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE decans (
    number VARCHAR(30) NOT NULL,
    name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    PRIMARY KEY (number)
);

CREATE TABLE faculties (
    id VARCHAR(50) NOT NULL,
    faculty VARCHAR(30) NOT NULL,
    decan VARCHAR(30) NOT NULL,
    security_number VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (decan)
        REFERENCES decans (number)
);

CREATE TABLE students (
    facultyNumber VARCHAR(30) NOT NULL,
    name VARCHAR(30) NOT NULL,
    facultyId VARCHAR(50) NOT NULL,
    PRIMARY KEY (facultyNumber),
    FOREIGN KEY (facultyId)
        REFERENCES faculties (id)
);

CREATE TABLE student_languages (
    facultyNumber VARCHAR(50) NOT NULL,
    languageId int NOT NULL,
    PRIMARY KEY (facultyNumber , languageId),
    FOREIGN KEY (languageId)
        REFERENCES languages (id)
);