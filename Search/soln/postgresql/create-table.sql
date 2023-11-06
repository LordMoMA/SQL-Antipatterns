CREATE TABLE Bugs (
  bug_id SERIAL PRIMARY KEY,
  summary      VARCHAR(80),
  description  TEXT,
  ts_bug_text  TSVECTOR GENERATED ALWAYS AS (to_tsvector('english',
      COALESCE(summary, '') || COALESCE(description, ''))) STORED
  -- other columns
);
