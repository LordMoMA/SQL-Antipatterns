DELIMITER //
CREATE PROCEDURE CloseUnresolvedBugsForProduct(
  IN given_product_id BIGINT UNSIGNED)
BEGIN
  START TRANSACTION;
  UPDATE Bugs JOIN BugsProducts USING (bug_id)
  SET status = 'WONTFIX'
  WHERE product_id = given_product_id
  AND status IN ('NEW', 'OPEN');
  COMMIT;
END
//
DELIMITER ;
CALL CloseUnresolvedBugsForProduct(1234);
