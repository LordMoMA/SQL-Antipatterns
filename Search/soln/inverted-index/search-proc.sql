DELIMITER //
-- START:create
CREATE PROCEDURE BugsSearch(IN p_keyword VARCHAR(40))
BEGIN
  DECLARE v_keyword_id BIGINT UNSIGNED;

  SELECT MAX(keyword_id) INTO v_keyword_id FROM Keywords
  WHERE keyword = p_keyword; -- (1)

  IF (v_keyword_id IS NULL) THEN
    INSERT INTO Keywords (keyword) VALUES (p_keyword); -- (2)

    SELECT LAST_INSERT_ID() INTO v_keyword_id; -- (3)
                                     
    INSERT INTO BugsKeywords (bug_id, keyword_id)
      SELECT bug_id, v_keyword_id FROM Bugs
      WHERE summary REGEXP CONCAT('\\b', p_keyword, '\\b')
	OR description REGEXP CONCAT('\\b', p_keyword, '\\b'); -- (4)
  END IF;

  SELECT b.* FROM Bugs b 
  JOIN BugsKeywords k USING (bug_id)
  WHERE k.keyword_id = v_keyword_id; -- (5)
END
-- END:create
//
DELIMITER ;
-- START:call
CALL BugsSearch('crash');
-- END:call
