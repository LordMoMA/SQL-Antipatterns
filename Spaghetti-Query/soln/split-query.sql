SELECT b.bug_id, COUNT(t.tag) AS count_tags
FROM Bugs b
LEFT OUTER JOIN Tags t ON (b.bug_id = t.bug_id)
WHERE b.bug_id = 1234
GROUP BY b.bug_id;

SELECT b.bug_id, COUNT(bp.product_id) AS count_products
FROM Bugs b
LEFT OUTER JOIN BugsProducts bp ON (b.bug_id = bp.bug_id)
WHERE b.bug_id = 1234
GROUP BY b.bug_id;
