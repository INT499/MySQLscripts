/* THis script is used to modify existing data in the customer table.  It changes the value
of "cust_lastname" to "Halpert" for customer ID "2"*/
UPDATE `eztechmovie_db`.`tbl_customer`
SET 
    cust_lastname = 'Halpert'
WHERE cust_id = 2;