CREATE TABLE Screenshots (
  image_id          SERIAL NOT NULL,
  bug_id            BIGINT UNSIGNED NOT NULL,
  screenshot_image  BLOB,
  caption           VARCHAR(100),
  PRIMARY KEY       (image_id, bug_id),
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id)
);
