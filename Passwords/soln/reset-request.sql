CREATE TABLE PasswordResetRequest (
  account_id  BIGINT UNSIGNED PRIMARY KEY,
  token       CHAR(32) NOT NULL,
  expiration  TIMESTAMP NOT NULL,
  FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

SET @token = MD5('billkarwin' || CURRENT_TIMESTAMP || RAND());

# Use REPLACE instead of INSERT in MySQL, so the statement overwrites
# any existing row for the given account_id.
REPLACE INTO PasswordResetRequest (account_id, token, account_id, expiration)
  VALUES (123, @token, CURRENT_TIMESTAMP + INTERVAL 1 HOUR);
