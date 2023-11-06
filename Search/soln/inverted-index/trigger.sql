DELIMITER //
-- START:create
CREATE TRIGGER Bugs_Insert AFTER INSERT ON Bugs
FOR EACH ROW
BEGIN
  INSERT INTO BugsKeywords (bug_id, keyword_id)
    SELECT NEW.bug_id, k.keyword_id FROM Keywords k
    WHERE NEW.description REGEXP CONCAT('\\b', k.keyword, '\\b')
      OR NEW.summary REGEXP CONCAT('\\b', k.keyword, '\\b');
END
-- END:create
//
DELIMITER ;
