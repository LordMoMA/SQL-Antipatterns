SELECT b.bug_id, t.tag, bp.product_id
FROM Bugs b
LEFT OUTER JOIN Tags t ON (t.bug_id = b.bug_id)
LEFT OUTER JOIN BugsProducts bp ON (bp.bug_id = b.bug_id)
WHERE b.bug_id = 1234;
