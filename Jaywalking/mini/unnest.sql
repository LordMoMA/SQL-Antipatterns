SELECT a FROM Products
CROSS JOIN unnest(string_to_array(account_id, ',')) AS a;
