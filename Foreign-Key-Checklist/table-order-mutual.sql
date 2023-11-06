DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id INT PRIMARY KEY,
  favorite_child_id INT
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

ALTER TABLE Parent
  ADD FOREIGN KEY (favorite_child_id) REFERENCES Child(child_id);
