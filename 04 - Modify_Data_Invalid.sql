/* This script is used to attempt modify existing data with invalid information. The script attempts
to change the customer billing value to something that does not exist in the tbl_payment table. 
Since there is a relation between the customer table and the payment table, the only valuers that can 
be used are the ones in the payment_id field. */
UPDATE `eztechmovie_db`.`tbl_customer`
SET 
    cust_payment = '5'
WHERE cust_id = 2;