-- START:accountsperproduct
SELECT product_id, COUNT(*) AS accounts_per_product
FROM Contacts
GROUP BY product_id;
-- END:accountsperproduct
-- START:productsperaccount
SELECT account_id, COUNT(*) AS products_per_account
FROM Contacts
GROUP BY account_id;
-- END:productsperaccount
-- START:productwithmaxaccounts
SELECT product_id, COUNT(*) AS accounts_per_product
FROM Contacts
GROUP BY product_id
ORDER BY accounts_per_product DESC
LIMIT 1;
-- END:productwithmaxaccounts
