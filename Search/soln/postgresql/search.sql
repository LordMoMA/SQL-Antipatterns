SELECT * FROM Bugs WHERE ts_bug_text @@ to_tsquery('crash');
