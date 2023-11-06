name = request.args.get("name")
cnx.execute("SELECT * FROM Products WHERE product_name = %s", [name])
bugid_list = "1234,3456,5678"
cnx.execute("SELECT * FROM Bugs WHERE bug_id IN ( %s )", [bugid_list])
table = "Bugs"
cnx.execute("SELECT * FROM %s WHERE bug_id = 1234", [table])
column = "date_reported"
cnx.execute("SELECT * FROM Bugs ORDER BY %s", [column]);
keyword = "DESC"
cnx.execute("SELECT * FROM Bugs ORDER BY date_reported %s", [keyword]);
