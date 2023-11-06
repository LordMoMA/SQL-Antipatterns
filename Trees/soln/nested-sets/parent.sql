SELECT c2.*
FROM Comments AS c1
  JOIN Comments AS c2
    ON c1.nsleft > c2.nsleft AND c1.nsleft < c2.nsright
  LEFT JOIN Comments AS c3
    ON c1.nsleft > c3.nsleft AND c1.nsleft < c3.nsright
    AND c3.nsleft > c2.nsleft AND c3.nsleft < c2.nsright
WHERE c1.comment_id = 6
  AND c3.comment_id IS NULL;

