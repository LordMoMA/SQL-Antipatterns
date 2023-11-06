CREATE SEARCH INDEX BugsJson ON Bugs(properties) FOR JSON;

SELECT * FROM Bugs
WHERE json_textcontains(properties, '$.summary', 'crash');

