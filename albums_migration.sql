USE codeup_test_db;
DROP TABLE IF exists albums;
create table albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50) NOT NULL ,
  name  VARCHAR(100) NOT NULL,
  release_date YEAR NOT NULL,
  sales DECIMAL(10,2),
  genre VARCHAR(50),
  PRIMARY KEY (id)
);