SELECT product_id, product_name, value
FROM Products CROSS APPLY STRING_SPLIT(account_id, ',');
