DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id VARCHAR(10) PRIMARY KEY
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id VARCHAR(10) NOT NULL REFERENCES Parent(parent_id)
);
CREATE TABLE `Child` (
  `child_id` int NOT NULL,
  `parent_id` varchar(10) NOT NULL,
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
