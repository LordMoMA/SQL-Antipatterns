SELECT bug_id, SUBSTRING(summary FROM 1 FOR 16) AS summary_shortened, ...
FROM Bugs;
