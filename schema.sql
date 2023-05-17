SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS library;
CREATE SCHEMA library;
USE library;

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS school (
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

CREATE TABLE IF NOT EXISTS school_library ( 
  library_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  library_name VARCHAR(45) NOT NULL,
  library_postal_code CHAR(5) NOT NULL,
  library_phone CHAR(10) NOT NULL,
  library_email VARCHAR(45) NOT NULL,
  date_of_construction DATE NOT NULL,
  number_of_books INT UNSIGNED NOT NULL,
  PRIMARY KEY (library_id)
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

CREATE TABLE IF NOT EXISTS school_operator (
  school_operator_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  school_operator_name VARCHAR(15) NOT NULL,
  school_operator_surname VARCHAR(15) NOT NULL,
  school_operator_age INT UNSIGNED NOT NULL,
  school_operator_postal_code CHAR(5) NOT NULL,
  school_operator_phone INT UNSIGNED NOT NULL,
  school_operator_email VARCHAR(45) NOT NULL,
  school_operator_sex ENUM('M','F','NB') NOT NULL,
  PRIMARY KEY (school_operator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS general_operator(
  general_operator_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  general_operator_name VARCHAR(15) NOT NULL,
  general_operator_surname VARCHAR(15) NOT NULL,
  general_operator_age INT UNSIGNED NOT NULL,
  general_operator_phone INT UNSIGNED NOT NULL,
  general_operator_postal_code INT UNSIGNED NOT NULL,
  general_operator_email VARCHAR(45) NOT NULL,
  general_operator_sex ENUM('M','F','NB') NOT NULL,
  PRIMARY KEY(general_operator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS user (
  user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_type ENUM('student', 'professor') NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (user_id) REFERENCES student(student_id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES professor(professor_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
