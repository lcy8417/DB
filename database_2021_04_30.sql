DROP DATABASE IF EXISTS sqlDB;
CREATE DATABASE sqlDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
USE sqlDB;
DROP TABLE IF EXISTS userTbl;
CREATE TABLE userTbl(
	userID CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    birthYear INT NOT NULL,
    addr CHAR(2) NOT NULL,
    mobile1 CHAR(3),
    mobil2 CHAR(8),
    height SMALLINT,
    mDATA DATE
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
DROP TABLE IF EXISTS buyTbl;
CREATE TABLE buyTbl(
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    userID CHAR(8) NOT NULL,
    prodName CHAR(4),
    groupName CHAR(4),
    price INT NOT NULL,
    amount SMALLINT NOT NULL,
    FOREIGN KEY (userID) REFERENCES userTbl(userID)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO userTbl VALUES('LSG', '이승기', 1987, '서울', '011', '11111111', 182, '2008-8-8');
INSERT INTO userTbl VALUES('KBS', '김범수', 1979, '경남', '011', '22222222', 173, '2012-4-4');
INSERT INTO userTbl VALUES('KKH', '김경호', 1971, '전남', '019', '33333333', 177, '2007-7-7');
INSERT INTO userTbl VALUES('JYP', '조용필', 1950, '경기', '011', '44444444', 166, '2009-4-4');
INSERT INTO userTbl VALUES('SSK', '성시경', 1979, '서울', NULL, NULL, 186, '2013-12-12');
INSERT INTO userTbl VALUES('LJB', '임재범', 1963, '서울', '016', '66666666', 182, '2009-9-9');
INSERT INTO userTbl VALUES('YJS', '윤종신', 1960, '경남', NULL, NULL, 170, '2005-5-5');
INSERT INTO userTbl VALUES('EJW', '은지원', 1972, '경북', '011', '88888888', 174, '2014-3-3');
INSERT INTO userTbl VALUES('JKW', '조관우', 1965, '경기', '016', '99999999', 172, '2010-10-10');
INSERT INTO userTbl VALUES('BBK', '바비킴', 1973, '서울', '010', '00000000', 176, '2013-5-5');
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('KBS', '운동화', '의류', 30, 2);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('KBS', '노트북', '전자', 1000, 1);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('JYP', '모니터', '전자', 200, 1);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('BBK', '모니터', '전자', 200, 5);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('KBS', '청바지', '의류', 50, 3);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('BBK', '메모리', '전자', 80, 10);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('SSK', '책', '서적', 15, 5);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('EJW', '책', '서적', 15, 2);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('EJW', '청바지', '의류', 50, 1);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('BBK', '운동화', '의류', 30, 2);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('EJW', '책', '서적', 15, 1);
INSERT INTO buyTbl (userID, prodName, groupName, price, amount) VALUES('BBK', '운동화', '의류', 30, 2);

