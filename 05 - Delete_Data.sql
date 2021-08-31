/* This script is used to delete existing data in the customer table.  It deletes the entire 
row of customer information for customer ID "2"*/
DELETE FROM `eztechmovie_db`.`tbl_customer`
WHERE cust_id = 2;