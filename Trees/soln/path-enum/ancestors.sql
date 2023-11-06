SELECT *
FROM Comments AS c
WHERE '1/4/6/7/' LIKE CONCAT(c.path, '%');
