CREATE TABLE Автори (
    АвторID INT PRIMARY KEY,
    "Ім'я" VARCHAR(100),
    Прізвище VARCHAR(100),
    Дата_народження DATE
);

CREATE TABLE Книги (
    КнигаID INT PRIMARY KEY,
    Назва VARCHAR(100),
    Рік_видання INT,
    АвторID INT,
    FOREIGN KEY (АвторID) REFERENCES Автори(АвторID)
);

CREATE TABLE Читачі (
    ЧитачID INT PRIMARY KEY,
    "Ім'я" VARCHAR(100),
    Прізвище VARCHAR(100),
    Телефон VARCHAR(20),
    Email VARCHAR(100),
    Дата_реєстрації DATE
);

CREATE TABLE Видача (
    ВидачаID INT PRIMARY KEY,
    ЧитачID INT,
    КнигаID INT,
    Дата_видачі DATE,
    Дата_повернення DATE,
    FOREIGN KEY (ЧитачID) REFERENCES Читачі(ЧитачID),
    FOREIGN KEY (КнигаID) REFERENCES Книги(КнигаID)
);

CREATE TABLE Жанри (
    ЖанрID INT PRIMARY KEY,
    Назва VARCHAR(100)
);

CREATE TABLE Книги_Жанри (
    КнигаID INT,
    ЖанрID INT,
    FOREIGN KEY (КнигаID) REFERENCES Книги(КнигаID),
    FOREIGN KEY (ЖанрID) REFERENCES Жанри(ЖанрID),
    PRIMARY KEY (КнигаID, ЖанрID)
);

CREATE TABLE Видавництва (
    ВидавництвоID INT PRIMARY KEY,
    Назва VARCHAR(100),
    Адреса VARCHAR(255)
);

CREATE TABLE Книги_Видавництва (
    КнигаID INT,
    ВидавництвоID INT,
    FOREIGN KEY (КнигаID) REFERENCES Книги(КнигаID),
    FOREIGN KEY (ВидавництвоID) REFERENCES Видавництва(ВидавництвоID),
    PRIMARY KEY (КнигаID, ВидавництвоID)
);

CREATE TABLE Працівники (
    ПрацівникID INT PRIMARY KEY,
    "Ім'я" VARCHAR(100),
    Прізвище VARCHAR(100),
    Посада VARCHAR(100),
    Зарплата DECIMAL(10, 2)
);

CREATE TABLE Розташування (
    РозташуванняID INT PRIMARY KEY,
    Назва VARCHAR(100),
    Опис VARCHAR(255)
);
