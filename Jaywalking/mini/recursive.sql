WITH RECURSIVE cte AS (
  SELECT product_id, product_name,
    SUBSTRING_INDEX(account_id, ',', 1) AS account_id,
    SUBSTRING(account_id, LENGTH(SUBSTRING_INDEX(account_id, ',', 1))+2)
    AS remainder
  FROM Products
  UNION ALL
  SELECT product_id, product_name, SUBSTRING_INDEX(remainder, ',', 1),
    SUBSTRING(remainder, LENGTH(SUBSTRING_INDEX(remainder, ',', 1))+2)
  FROM cte
  WHERE LENGTH(remainder) > 0
)
SELECT product_id, product_name, account_id FROM cte;
