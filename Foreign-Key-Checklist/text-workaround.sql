DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS Parent;
CREATE TABLE Parent (
  parent_id TEXT NOT NULL,
  parent_id_crc INT UNSIGNED AS (CRC32(parent_id)) STORED,
  UNIQUE KEY (parent_id_crc)
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id_crc INT UNSIGNED,
  FOREIGN KEY (parent_id_crc) REFERENCES Parent(parent_id_crc)
);
