CREATE TABLE Tags (
  tag     VARCHAR(20) PRIMARY KEY,
  coiner  BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (coiner) REFERENCES Accounts(account_id)
);

CREATE TABLE BugsTags (
  bug_id  BIGINT UNSIGNED NOT NULL,
  tag     VARCHAR(20) NOT NULL,
  tagger  BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (bug_id, tag),
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id),
  FOREIGN KEY (tag) REFERENCES Tags(tag),
  FOREIGN KEY (tagger) REFERENCES Accounts(account_id)
);
