INSERT INTO Comments (bug_id, author, comment)
VALUES (1234, 56 /* Ollie */, 'Good job!');

UPDATE Comments AS c
CROSS JOIN Comments AS c7 ON c7.comment_id = 7
  SET c.path = CONCAT(c7.path, LAST_INSERT_ID(), '/')
WHERE c.comment_id = LAST_INSERT_ID();
