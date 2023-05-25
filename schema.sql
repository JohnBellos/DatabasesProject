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
  ISBN CHAR(13) NOT NULL,
  title VARCHAR(45) NOT NULL,
  publisher VARCHAR(45) NOT NULL, 
  writer VARCHAR(45) NOT NULL,
  num_of_pages INT UNSIGNED NOT NULL,
  summary VARCHAR(1024) NOT NULL,
  available_copies INT UNSIGNED NOT NULL,
  category VARCHAR(15) NOT NULL,
  language_of_book VARCHAR(15) NOT NULL,
  key_word VARCHAR(15) NOT NULL,
  PRIMARY KEY (ISBN)
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

CREATE TABLE IF NOT EXISTS professor (
  professor_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  professor_name  VARCHAR(15) NOT NULL,
  professor_surname VARCHAR(15) NOT NULL,
  professor_age INT UNSIGNED NOT NULL,
  professor_email VARCHAR(45) NOT NULL,
  professor_class INT UNSIGNED NOT NULL,
  professor_sex ENUM('M','F','NB') NOT NULL,
  PRIMARY KEY (professor_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS operator (
  operator_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (operator_id),
  operator_name VARCHAR(15) NOT NULL,
  operator_surname VARCHAR(15) NOT NULL,
  operator_age INT UNSIGNED NOT NULL,
  operator_postal_code CHAR(5) NOT NULL,
  operator_phone INT UNSIGNED NOT NULL,
  operator_email VARCHAR(45) NOT NULL,
  operator_sex ENUM('M','F','NB') NOT NULL,
  school_id INT UNSIGNED NOT NULL,
  CONSTRAINT fk_OPschool_id FOREIGN KEY (school_id) REFERENCES school(school_id) ON DELETE CASCADE ON UPDATE CASCADE
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

-- Create the 'library_user' table
CREATE TABLE IF NOT EXISTS library_user (
  user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(50),
  password VARCHAR(50),
  user_type ENUM('student', 'professor') NOT NULL,
  school_id INT UNSIGNED,
  typec ENUM('Std','Prf') NOT NULL,
  PRIMARY KEY (user_id),
  CONSTRAINT fk_school_id FOREIGN KEY (school_id) REFERENCES school(school_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS author(
  author_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (author_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS category(
  category_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  category_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS keyword(
  keyword_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  key_word VARCHAR(20) NOT NULL,
  PRIMARY KEY (keyword_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



-------------------------------------
-- Connection tables from here and on

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS wrote (
  author_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  book_ISBN CHAR(13) NOT NULL,
  PRIMARY KEY (author_id, book_ISBN),
  CONSTRAINT fk_book_has_author1 FOREIGN KEY (author_id) REFERENCES author (author_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_book_has_author2 FOREIGN KEY (book_ISBN) REFERENCES book (ISBN) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS has_category (
  category_id INT UNSIGNED NOT NULL,
  book_ISBN CHAR(13) NOT NULL,
  PRIMARY KEY (category_id, book_ISBN),
  CONSTRAINT fk_book_has_category1
    FOREIGN KEY (category_id)
    REFERENCES category (category_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_book_has_category2
    FOREIGN KEY (book_ISBN)
    REFERENCES book (ISBN)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS has_keyword (
  keyword_id INT UNSIGNED NOT NULL,
  book_ISBN CHAR(13) NOT NULL,
  PRIMARY KEY (keyword_id, book_ISBN),
  CONSTRAINT fk_book_has_keyword1
    FOREIGN KEY (keyword_id)
    REFERENCES category (keyword_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_book_has_keyword2
    FOREIGN KEY (book_ISBN)
    REFERENCES book (ISBN)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS borrows (
  user_id INT UNSIGNED NOT NULL,
  book_ISBN INT UNSIGNED NOT NULL,
  PRIMARY KEY (user_id, book_ISBN),
  CONSTRAINT fk_user_borrows
    FOREIGN KEY (user_id)
    REFERENCES library_user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_user_borrows2
    FOREIGN KEY (book_ISBN)
    REFERENCES book (ISBN)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS reviews (
  user_id INT UNSIGNED NOT NULL,
  book_ISBN INT UNSIGNED NOT NULL,
  review VARCHAR(2000) NOT NULL,
  PRIMARY KEY (user_id, book_ISBN),
  CONSTRAINT fk_user_reviews
    FOREIGN KEY (user_id)
    REFERENCES library_user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_user_reviews2
    FOREIGN KEY (book_ISBN)
    REFERENCES book (ISBN)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS reservations (
  user_id INT UNSIGNED NOT NULL,
  book_ISBN INT UNSIGNED NOT NULL,
  deadline_of_reservation DATE,
  PRIMARY KEY (user_id, book_ISBN),
  CONSTRAINT fk_user_reservations
    FOREIGN KEY (user_id)
    REFERENCES library_user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_user_reservations2
    FOREIGN KEY (book_ISBN)
    REFERENCES book (ISBN)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS contains (
  school_id INT UNSIGNED NOT NULL,
  ISBN      INT UNSIGNED NOT NULL,
  PRIMARY KEY (school_id, ISBN),
  CONSTRAINT
    FOREIGN KEY (school_id)
    REFERENCES school (school_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT
    FOREIGN KEY (ISBN)
    REFERENCES book (ISBN)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

