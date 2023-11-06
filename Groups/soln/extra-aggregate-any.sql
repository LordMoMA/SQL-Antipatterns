SELECT product_id, MAX(date_reported) AS latest,
  ANY_VALUE(assigned_to) AS any_developer
FROM Bugs JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
