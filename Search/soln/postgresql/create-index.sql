CREATE INDEX bugs_ts ON Bugs USING GIN(ts_bug_text);
