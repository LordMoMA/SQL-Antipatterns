CREATE TABLE Parent (
  parent_id1 INT,
  parent_id2 INT,
  parent_id3 INT,
  PRIMARY KEY (parent_id1, parent_id2, parent_id3)
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id2 INT NOT NULL,
  parent_id3 INT NOT NULL,
  FOREIGN KEY (parent_id2, parent_id3)
    REFERENCES Parent(parent_id2, parent_id3)
);
