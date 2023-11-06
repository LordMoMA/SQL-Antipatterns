SELECT b.bug_id,
  COUNT(t.tag) AS count_tags,
  COUNT(bp.product_id) AS count_products
FROM Bugs b
LEFT OUTER JOIN Tags t ON (t.bug_id = b.bug_id)
LEFT OUTER JOIN BugsProducts bp ON (bp.bug_id = b.bug_id)
WHERE b.bug_id = 1234
GROUP BY b.bug_id;
