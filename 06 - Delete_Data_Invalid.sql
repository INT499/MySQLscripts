/* This script is used to attempt to delete existing data in the tbl_payment table.  The data
cannot be deleted because of the relational tables and the value is referenced in the customer table*/
DELETE FROM `eztechmovie_db`.`tbl_payment`
WHERE pay_id = 2;