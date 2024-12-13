-- CREATE DATABASE mntest1;
USE mntest1;

CREATE TABLE Address (
    id INT NOT NULL AUTO_INCREMENT,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Classes (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    language VARCHAR(50),
    description TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE Students (
    id INT NOT NULL AUTO_INCREMENT,
    fullname VARCHAR(100) NOT NULL,
    address_id INT,
    age INT,
    phone VARCHAR(15) UNIQUE,
    classes_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (address_id) REFERENCES Address(id),
    FOREIGN KEY (classes_id) REFERENCES Classes(id)
);

CREATE TABLE Course (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE Point (
    id INT NOT NULL AUTO_INCREMENT,
    course_id INT,
    student_id INT,
    point FLOAT,
    PRIMARY KEY (id),
    FOREIGN KEY (course_id) REFERENCES Course(id),
    FOREIGN KEY (student_id) REFERENCES Students(id)
);
