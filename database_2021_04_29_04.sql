 USE mydata;
 DROP TABLE mytable;
 CREATE TABLE mytable(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    modelnumber VARCHAR(15) NOT NULL,
    series VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
 );
 DESC mytable;
 DROP TABLE mytable;
 CREATE TABLE mytable(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    model_num varchar(10) NOT NULL,
    model_type varchar(10) NOT NULL,
    PRIMARY KEY(id)
 );
 DESC mytable;