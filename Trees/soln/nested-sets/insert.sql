-- make space for NS values 8 and 9
UPDATE Comments
  SET nsleft = CASE WHEN nsleft >= 8 THEN nsleft+2 ELSE nsleft END,
      nsright = nsright+2
WHERE nsright >= 7;

-- create new child of comment #5, occupying NS values 8 and 9
INSERT INTO Comments (nsleft, nsright, bug_id, author, comment)
  VALUES (8, 9, 1234, 34 /* Fran */, 'Me too!');
