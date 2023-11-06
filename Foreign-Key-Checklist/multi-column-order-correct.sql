DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id1 INT,
  parent_id2 INT,
  PRIMARY KEY (parent_id1, parent_id2)
);

INSERT INTO Parent (parent_id1, parent_id2) VALUES (1234, 5678);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id1 INT NOT NULL,
  parent_id2 INT NOT NULL,
  FOREIGN KEY (parent_id1, parent_id2)
    REFERENCES Parent(parent_id1, parent_id2)
);

INSERT INTO Child (child_id, parent_id1, parent_id2) VALUES (1, 1234, 5678);
