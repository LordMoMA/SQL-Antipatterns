-- START:telephone-book-not-indexable
SELECT * FROM TelephoneBook WHERE first_name = 'Charles'; -- NOT indexable
-- END:telephone-book-not-indexable

-- START:order-by
CREATE INDEX LastNameFirstName ON Accounts(last_name, first_name);

SELECT * FROM Accounts ORDER BY first_name, last_name;
-- END:order-by

-- START:month
CREATE INDEX DateReported ON Bugs(date_reported);

SELECT * FROM Bugs WHERE MONTH(date_reported) = 4;
-- END:month

-- START:or-terms
CREATE INDEX LastNameFirstName ON Accounts(last_name, first_name);

SELECT * FROM Accounts WHERE last_name = 'Charles' OR first_name = 'Charles';
-- END:or-terms

-- START:union
SELECT * FROM Accounts WHERE last_name = 'Charles'
UNION
SELECT * FROM Accounts WHERE first_name = 'Charles';
-- END:union

-- START:like-wildcard
CREATE INDEX Description ON Bugs(description);

SELECT * FROM Bugs WHERE description LIKE '%crash%';
-- END:like-wildcard
