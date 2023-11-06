CREATE TABLE BugsAccounts (
  bug_id       BIGINT UNSIGNED NOT NULL,
  reported_by  BIGINT UNSIGNED,
  assigned_to  BIGINT UNSIGNED,
  verified_by  BIGINT UNSIGNED,
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id),
  FOREIGN KEY (reported_by) REFERENCES Accounts(account_id),
  FOREIGN KEY (assigned_to) REFERENCES Accounts(account_id),
  FOREIGN KEY (verified_by) REFERENCES Accounts(account_id)
);
