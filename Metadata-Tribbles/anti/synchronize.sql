INSERT INTO Bugs_2021 (bug_id, date_reported, ...)
  SELECT bug_id, date_reported, ...
  FROM Bugs_2022
  WHERE bug_id = 1234;

DELETE FROM Bugs_2022 WHERE bug_id = 1234;
