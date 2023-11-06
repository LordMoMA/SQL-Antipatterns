DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id TEXT NOT NULL,
  UNIQUE KEY (parent_id(40))
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id TEXT NOT NULL,
  KEY (parent_id(40)),
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);
