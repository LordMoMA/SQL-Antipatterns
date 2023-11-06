WITH RECURSIVE CommentTree
    (comment_id, bug_id, parent_id, author, comment_date, comment, depth)
AS (
    SELECT comment_id, bug_id, parent_id, author, comment_date,
      comment, 0 AS depth
    FROM Comments
    WHERE parent_id IS NULL
  UNION ALL
    SELECT c.comment_id, c.bug_id, c.parent_id, c.author, c.comment_date,
      c.comment, ct.depth+1 AS depth
    FROM CommentTree ct
    JOIN Comments c ON (c.parent_id = ct.comment_id)
)
SELECT * FROM CommentTree WHERE bug_id = 1234;
