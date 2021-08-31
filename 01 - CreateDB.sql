/* --Create Database Script--*/
/* Script to create the database "eztechmovie_db" and associated tables */

/* THe following creates the database schema "eztechmovie_db" */

CREATE SCHEMA `eztechmovie_db` ;

/* --Create tbl_customer Table --*/

CREATE TABLE `eztechmovie_db`.`tbl_customer` (
  `cust_id` INT NOT NULL AUTO_INCREMENT,
  `cust_password` VARCHAR(8) NULL,
  `cust_lastname` VARCHAR(45) NULL,
  `cust_firstname` VARCHAR(45) NULL,
  `plan_id` INT NULL,
  `cust_address` VARCHAR(128) NULL,
  `cust_email` VARCHAR(45) NULL,
  `cust_payment` INT NULL,
  `cust_start_date` VARCHAR(10) NULL,
  PRIMARY KEY (`cust_id`));
  
 
  /*--Create tbl_payment--*/
  
  CREATE TABLE `eztechmovie_db`.`tbl_payment` (
  `pay_id` INT NOT NULL,
  `pay_name` VARCHAR(45) NULL,
  PRIMARY KEY (`pay_id`));

  
  /*--Create tbl_plan--*/
  
  CREATE TABLE `eztechmovie_db`.`tbl_plan` (
  `plan_id` INT NOT NULL,
  `plan_name` VARCHAR(45) NULL,
  PRIMARY KEY (`plan_id`));
  
    /*--Create tbl_cust_audit*/
    /* This table is used to store audit information. The audit table is populated with any create or delete 
    information for the tbl_customer database table */
  
   CREATE TABLE `eztechmovie_db`.`tbl_cust_audit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `audit_data` VARCHAR(200) NULL,
  PRIMARY KEY (`id`));
 
 
  /*--Create tbl_movie--*/
  
 CREATE TABLE `eztechmovie_db`.`tbl_movie` (
  `movie_id` INT NOT NULL,
  `movie_name` VARCHAR(45) NULL,
  `movie_rating` VARCHAR(6) NULL,
  `movie_cast` VARCHAR(128) NULL,
  `movie_genre` VARCHAR(45) NULL,
  `dvd_qty_available` VARCHAR(45) NULL,  
  PRIMARY KEY (`movie_id`)); 
 
 /* The following code created indexes for the customer database table.  It then creates
 a relationship between the Plan/Payment tables and the Customer table */
 
ALTER TABLE `eztechmovie_db`.`tbl_customer` 
ADD INDEX `plan_idx` (`plan_id` ASC) VISIBLE,
ADD INDEX `payment_idx` (`cust_payment` ASC) VISIBLE;

ALTER TABLE `eztechmovie_db`.`tbl_customer` 
ADD CONSTRAINT `plan_id`
  FOREIGN KEY (`plan_id`)
  REFERENCES `eztechmovie_db`.`tbl_plan` (`plan_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `cust_payment`
  FOREIGN KEY (`cust_payment`)
  REFERENCES `eztechmovie_db`.`tbl_payment` (`pay_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  /*--Apply Triggers--*/
  /* The following code is used to populate the Audit table any time there is an addition or deletion to the 
  tbl_customer database table*/

USE `eztechmovie_db`; 

DELIMITER $$ 

CREATE TRIGGER `tbl_cust_AFTER_INSERT` AFTER INSERT ON `eztechmovie_db`.`tbl_customer` FOR EACH ROW  

BEGIN 

INSERT INTO tbl_cust_audit (id, audit_data)  

VALUES (id, concat('New Customer With ID..', NEW.cust_id, '...', 'Was Added on ', NOW())); 

END $$ 

/ 

DELIMITER $$ 

CREATE  TRIGGER `tbl_cust_AFTER_DELETE` AFTER DELETE ON `eztechmovie_db`.`tbl_customer` FOR EACH ROW BEGIN 

INSERT INTO tbl_cust_audit (id, audit_data)  

VALUES (id, concat('Customer With ID..', OLD.cust_id, '...',  'Was Deleted on ', NOW())); 

END $$ 