SELECT * FROM Bugs WHERE status IN (NULL, 'NEW');

SELECT * FROM Bugs WHERE status = NULL OR status = 'NEW';
