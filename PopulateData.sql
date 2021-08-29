/*--Populate Tables--*/
/*--This script is used to populate tbl_plan, tbl_payment and tbl_customer --*/
/*--Populate tbl_plan--*/
  
  INSERT INTO `eztechmovie_db`.`tbl_plan`
(`plan_id`,
`plan_name`)
VALUES
('1',
'Individual Plan');

  INSERT INTO `eztechmovie_db`.`tbl_plan`
(`plan_id`,
`plan_name`)
VALUES
('2',
'Friendly Plan');

  INSERT INTO `eztechmovie_db`.`tbl_plan`
(`plan_id`,
`plan_name`)
VALUES
('3',
'Family Plan');

  INSERT INTO `eztechmovie_db`.`tbl_plan`
(`plan_id`,
`plan_name`)
VALUES
('4',
'Individual DVD');

  INSERT INTO `eztechmovie_db`.`tbl_plan`
(`plan_id`,
`plan_name`)
VALUES
('5',
'Friendly DVD');

  INSERT INTO `eztechmovie_db`.`tbl_plan`
(`plan_id`,
`plan_name`)
VALUES
('6',
'Family DVD');

/*--Populate tbl_payment--*/

  INSERT INTO `eztechmovie_db`.`tbl_payment`
(`pay_id`,
`pay_name`)
VALUES
('1',
'Bill');

  INSERT INTO `eztechmovie_db`.`tbl_payment`
(`pay_id`,
`pay_name`)
VALUES
('2',
'Auto');

  INSERT INTO `eztechmovie_db`.`tbl_payment`
(`pay_id`,
`pay_name`)
VALUES
('3',
'Check');


/*--Populate tbl_customer Table--*/

INSERT INTO `eztechmovie_db`.`tbl_customer`
(`cust_id`,
`cust_password`,
`cust_lastname`,
`cust_firstname`,
`plan_id`,
`cust_address`,
`cust_email`,
`cust_payment`,
`cust_start_date`)
VALUES
('1',
'start123',
'Martin',
'Angela',
'1',
'123 Feline Lane, State Senator, NC',
'Angela.Martin@feline.com',
'1',
'1/1/2018');

INSERT INTO `eztechmovie_db`.`tbl_customer`
(`cust_id`,
`cust_password`,
`cust_lastname`,
`cust_firstname`,
`plan_id`,
`cust_address`,
`cust_email`,
`cust_payment`,
`cust_start_date`)
VALUES
('2',
'start234',
'Beesly',
'Pam',
'2',
'101 Art School Dr, NY, NY',
'ArtistPam@NYArtSchool.edu',
'2',
'3/15/2019');

INSERT INTO `eztechmovie_db`.`tbl_customer`
(`cust_id`,
`cust_password`,
`cust_lastname`,
`cust_firstname`,
`plan_id`,
`cust_address`,
`cust_email`,
`cust_payment`,
`cust_start_date`)
VALUES
('3',
'start345',
'Bernard',
'Andy',
'3',
'1 Cornell Dr, Ithaca, NY',
'Andrew.Bernard@Cornell.edu',
'2',
'12/25/2017');

INSERT INTO `eztechmovie_db`.`tbl_customer`
(`cust_id`,
`cust_password`,
`cust_lastname`,
`cust_firstname`,
`plan_id`,
`cust_address`,
`cust_email`,
`cust_payment`,
`cust_start_date`)
VALUES
('4',
'start456',
'Bratton',
'Creed',
'4',
'0 Street Corner Drive, Homeless, PA',
'creed@aol.com',
'3',
'8/22/2021');

INSERT INTO `eztechmovie_db`.`tbl_customer`
(`cust_id`,
`cust_password`,
`cust_lastname`,
`cust_firstname`,
`plan_id`,
`cust_address`,
`cust_email`,
`cust_payment`,
`cust_start_date`)
VALUES
('5',
'start567',
'Palmer',
'Meridith',
'5',
'14142 Emelita Street, Van Nuys, CA',
'Meridith_Palmer@aa.org',
'1',
'5/5/2020');

INSERT INTO `eztechmovie_db`.`tbl_customer`
(`cust_id`,
`cust_password`,
`cust_lastname`,
`cust_firstname`,
`plan_id`,
`cust_address`,
`cust_email`,
`cust_payment`,
`cust_start_date`)
VALUES
('6',
'start678',
'Kapoor',
'Kelly',
'6',
'100 Cubicle Lane, Annex, PA',
'KellyKapoor@woof.com',
'2',
'4/20/2009');

/*--Populate tbl_movie Table--*/

INSERT INTO `eztechmovie_db`.`tbl_movie`
(`movie_id`,
`movie_name`,
`movie_rating`,
`movie_cast`,
`movie_genre`,
`dvd_qty_available`)
VALUES
('1',
'Threat Level Midnight',
'R',
'Michael Scarn',
'Drama',
'10');

INSERT INTO `eztechmovie_db`.`tbl_movie`
(`movie_id`,
`movie_name`,
`movie_rating`,
`movie_cast`,
`movie_genre`,
`dvd_qty_available`)
VALUES
('2',
'Scrantonicity Live',
'PG-13',
'Kevin Malone',
'Live Concert',
'5');


INSERT INTO `eztechmovie_db`.`tbl_movie`
(`movie_id`,
`movie_name`,
`movie_rating`,
`movie_cast`,
`movie_genre`,
`dvd_qty_available`)
VALUES
('3',
'Schrute Farm Beets',
'PG',
'Dwight Schrute',
'Agri-Documentary',
'1');


