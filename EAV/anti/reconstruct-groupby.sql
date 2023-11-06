SELECT issue_id,
  MAX(CASE attr_name WHEN 'date_reported'
      THEN attr_value END) AS "date_reported",
  MAX(CASE attr_name WHEN 'status'
      THEN attr_value END) AS "status",
  MAX(CASE attr_name WHEN 'priority'
      THEN attr_value END) AS "priority",
  MAX(CASE attr_name WHEN 'description'
      THEN attr_value END) AS "description"
FROM Issues
WHERE issue_id = 1234
GROUP BY issue_id;
