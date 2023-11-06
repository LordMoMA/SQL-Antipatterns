DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id INT PRIMARY KEY
);

INSERT INTO Parent (parent_id)
VALUES (1234);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL
);

INSERT INTO Child (child_id, parent_id)
VALUES (1, 1234), (2, 5678);

ALTER TABLE Child
  ADD FOREIGN KEY (parent_id) REFERENCES Parent(parent_id);
