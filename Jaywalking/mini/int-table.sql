SELECT p.product_id, p.product_name,
  SUBSTRING_INDEX(SUBSTRING_INDEX(p.account_id, ',', n.n), ',', -1)
  AS account_id
FROM Products AS p 
JOIN Numbers AS n
 ON n.n <= LENGTH(p.account_id) - LENGTH(REPLACE(p.account_id, ',', ''));
