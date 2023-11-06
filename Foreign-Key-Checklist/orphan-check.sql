SELECT CASE COUNT(*)
  WHEN 0 THEN 'Ready to add foreign key'
  ELSE 'Do not add foreign key, because orphan rows exist'
  END AS `check`
FROM Child
LEFT OUTER JOIN Parent ON Child.parent_id = Parent.parent_id
WHERE Parent.parent_id IS NULL;
