SELECT p.product_id, p.product_name,
  SUBSTRING_INDEX(SUBSTRING_INDEX(p.account_id, ',', n.n), ',', -1)
  AS account_id
FROM Products AS p 
JOIN (
  SELECT 1 AS n UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 -- and so on
) AS n
 ON n.n <= LENGTH(p.account_id) - LENGTH(REPLACE(p.account_id, ',', ''));
