SELECT t.product_id, t.date_reported, t.bug_id
FROM (
  SELECT bp.product_id, b.date_reported, b.bug_id,
    ROW_NUMBER() OVER (PARTITION BY bp.product_id
      ORDER BY b.date_reported DESC) AS rownum
  FROM Bugs b JOIN BugsProducts bp USING (bug_id)
) AS t
WHERE t.rownum = 1;
