DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id VARCHAR(10) PRIMARY KEY
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id VARCHAR(20) NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);
