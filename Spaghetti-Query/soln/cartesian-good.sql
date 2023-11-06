-- START:hundred
CREATE TABLE integers (
  num INT PRIMARY KEY
);

INSERT INTO integers (num) VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9);

SELECT 10*digit10.num + digit1.num AS num
FROM integers AS digit1
CROSS JOIN integers AS digit10;
-- END:hundred

-- START:thousand
SELECT 100*digit100.num + 10*digit10.num + digit1.num AS num
FROM integers AS digit1
CROSS JOIN integers AS digit10
CROSS JOIN integers AS digit100;
-- END:thousand
