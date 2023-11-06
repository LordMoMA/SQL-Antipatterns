-- START:not-in
SELECT * FROM Bugs WHERE status NOT IN (NULL, 'NEW');
-- END:not-in

-- START:expand
SELECT * FROM Bugs WHERE NOT (status = NULL OR status = 'NEW');

SELECT * FROM Bugs WHERE NOT (status = NULL) AND NOT (status = 'NEW');
-- END:expand
