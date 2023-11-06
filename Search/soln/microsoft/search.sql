SELECT * FROM Bugs WHERE CONTAINS(summary, 'crash');

SELECT * FROM Bugs WHERE FREETEXT(summary, 'crash bug error');
