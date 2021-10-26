-- PSGSQL 

--CREATE OR REPLACE PROCEDURE latefee(
    --customer INTEGER,
    --late_fee_amount DECIMAL
--)
--AS
--$$
--BEGIN
    --UPDATE payment
    --SET amount = amount + late_fee_amount
    --WHERE customer_id = customer;

    --COMMIT;

--END
--$$
--LANGUAGE plpgsql


--SELECT * FROM payment    ---show first to verify changes
--WHERE customer_id = 341


--CALL latefee(341, 120.00)

--SELECT * FROM payment
--WHERE customer_id = 341---- shows changes dawg

--- then you can drop with DROP PROCEDURE command