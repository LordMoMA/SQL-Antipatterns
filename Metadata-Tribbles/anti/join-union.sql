SELECT * FROM Accounts a
JOIN (
    SELECT * FROM Bugs_2019
    UNION ALL
    SELECT * FROM Bugs_2020
    UNION ALL
    SELECT * FROM Bugs_2021
  ) t ON (a.account_id = t.reported_by)
