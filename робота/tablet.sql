CREATE TABLE ������ (
    �����ID INT PRIMARY KEY,
    "��'�" VARCHAR(100),
    ������� VARCHAR(100),
    ����_���������� DATE
);

CREATE TABLE ����� (
    �����ID INT PRIMARY KEY,
    ����� VARCHAR(100),
    г�_������� INT,
    �����ID INT,
    FOREIGN KEY (�����ID) REFERENCES ������(�����ID)
);

CREATE TABLE ������ (
    �����ID INT PRIMARY KEY,
    "��'�" VARCHAR(100),
    ������� VARCHAR(100),
    ������� VARCHAR(20),
    Email VARCHAR(100),
    ����_��������� DATE
);

CREATE TABLE ������ (
    ������ID INT PRIMARY KEY,
    �����ID INT,
    �����ID INT,
    ����_������ DATE,
    ����_���������� DATE,
    FOREIGN KEY (�����ID) REFERENCES ������(�����ID),
    FOREIGN KEY (�����ID) REFERENCES �����(�����ID)
);

CREATE TABLE ����� (
    ����ID INT PRIMARY KEY,
    ����� VARCHAR(100)
);

CREATE TABLE �����_����� (
    �����ID INT,
    ����ID INT,
    FOREIGN KEY (�����ID) REFERENCES �����(�����ID),
    FOREIGN KEY (����ID) REFERENCES �����(����ID),
    PRIMARY KEY (�����ID, ����ID)
);

CREATE TABLE ����������� (
    �����������ID INT PRIMARY KEY,
    ����� VARCHAR(100),
    ������ VARCHAR(255)
);

CREATE TABLE �����_����������� (
    �����ID INT,
    �����������ID INT,
    FOREIGN KEY (�����ID) REFERENCES �����(�����ID),
    FOREIGN KEY (�����������ID) REFERENCES �����������(�����������ID),
    PRIMARY KEY (�����ID, �����������ID)
);

CREATE TABLE ���������� (
    ���������ID INT PRIMARY KEY,
    "��'�" VARCHAR(100),
    ������� VARCHAR(100),
    ������ VARCHAR(100),
    �������� DECIMAL(10, 2)
);

CREATE TABLE ������������ (
    ������������ID INT PRIMARY KEY,
    ����� VARCHAR(100),
    ���� VARCHAR(255)
);
