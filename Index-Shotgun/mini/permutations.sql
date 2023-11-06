CREATE TABLE Bugs (
  bug_id        SERIAL PRIMARY KEY,
  date_reported DATE NOT NULL,
  summary       VARCHAR(80) NOT NULL,
  status        VARCHAR(10) NOT NULL,
  INDEX (bug_id, date_reported, summary, status),
  INDEX (date_reported, bug_id, summary, status),
  INDEX (summary, date_reported, bug_id, status),
  INDEX (bug_id, date_reported, summary, status),
  INDEX (summary, bug_id, date_reported, status),
  INDEX (bug_id, summary, date_reported, status),
  INDEX (date_reported, bug_id, summary, status),
  INDEX (summary, date_reported, bug_id, status),
  INDEX (status, date_reported, bug_id, summary),
  INDEX (date_reported, status, bug_id, summary),
  ...
);
