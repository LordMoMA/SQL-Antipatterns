SELECT b.status, COUNT(*) AS count_per_status FROM (
  SELECT * FROM Bugs_2020
    UNION
  SELECT * FROM Bugs_2021
    UNION
  SELECT * FROM Bugs_2022 ) AS b
GROUP BY b.status;
