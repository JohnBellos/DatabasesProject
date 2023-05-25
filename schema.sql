SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS library;
CREATE SCHEMA library;
USE library;

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS school(
  school_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  school_name VARCHAR(45) NOT NULL,
  postal_code CHAR(5) NOT NULL,
  city VARCHAR(20) NOT NULL,
  phone CHAR(10) NOT NULL,
  email VARCHAR(45) NOT NULL,
  principal_name VARCHAR(45) NOT NULL,
  operator_name VARCHAR(45) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (school_id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS book (
  book_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  publisher VARCHAR(45) NOT NULL,
  ISBN CHAR(13) NOT NULL, 
  writer VARCHAR(45) NOT NULL,
  num_of_pages INT UNSIGNED NOT NULL,
  summary VARCHAR(1024) NOT NULL,
  available_copies INT UNSIGNED NOT NULL,
  category VARCHAR(15) NOT NULL,
  language_of_book VARCHAR(15) NOT NULL,
  key_word VARCHAR(15) NOT NULL,
  PRIMARY KEY (book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS student (
  student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  student_name VARCHAR(15) NOT NULL,
  student_surname VARCHAR(15) NOT NULL,
  student_age INT UNSIGNED NOT NULL,
  student_email VARCHAR(45) NOT NULL,
  student_class INT UNSIGNED NOT NULL,
  student_sex ENUM('M','F','NB') NOT NULL,
  PRIMARY KEY (student_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS proffessor (
  proffessor_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  proffessor_name  VARCHAR(15) NOT NULL,
  proffessor_surname VARCHAR(15) NOT NULL,
  proffessor_age INT UNSIGNED NOT NULL,
  proffessor_email VARCHAR(45) NOT NULL,
  proffessor_class INT UNSIGNED NOT NULL,
  proffessor_sex ENUM('M','F','NB') NOT NULL,
  PRIMARY KEY (proffessor_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS operator (
  operator_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  operator_name VARCHAR(15) NOT NULL,
  operator_surname VARCHAR(15) NOT NULL,
  operator_age INT UNSIGNED NOT NULL,
  operator_postal_code CHAR(5) NOT NULL,
  operator_phone INT UNSIGNED NOT NULL,
  operator_email VARCHAR(45) NOT NULL,
  operator_sex ENUM('M','F','NB') NOT NULL,
  PRIMARY KEY (operator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS administrator(
  administrator_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  administrator_name VARCHAR(15) NOT NULL,
  administrator_surname VARCHAR(15) NOT NULL,
  administrator_age INT UNSIGNED NOT NULL,
  administrator_phone INT UNSIGNED NOT NULL,
  administrator_postal_code INT UNSIGNED NOT NULL,
  administrator_email VARCHAR(45) NOT NULL,
  administrator_sex ENUM('M','F','NB') NOT NULL,
  PRIMARY KEY(administrator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS user (
  user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_type ENUM('student', 'professor') NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (user_id) REFERENCES student(student_id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES professor(professor_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS author(
author_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
author_name VARCHAR(20) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS category(
category_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
category_name VARCHAR(20) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS keyword(
  keyword_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  key_word VARCHAR(20) NOT NULL,
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS



-- Connection tables from here and on

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS wrote (
  author_id INT UNSIGNED NOT NULL,
  ISBN INT UNSIGNED NOT NULL,
  PRIMARY KEY (author_id, ISBN),
  CONSTRAINT fk_book_has_author1
    FOREIGN KEY (author_author_id)
    REFERENCES author (author_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_book_has_author2
    FOREIGN KEY (book_ISBN)
    REFERENCES book (ISBN)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;
 