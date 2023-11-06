DROP TABLE IF EXISTS Child1;
DROP TABLE IF EXISTS Child2;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id INT PRIMARY KEY
);

CREATE TABLE Child1 (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  CONSTRAINT c1 FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

CREATE TABLE Child2 (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  CONSTRAINT c1 FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);
