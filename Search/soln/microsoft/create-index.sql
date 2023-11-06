CREATE FULLTEXT INDEX ON Bugs(summary, description)
  KEY INDEX bug_id ON BugsCatalog
  WITH CHANGE_TRACKING AUTO;
