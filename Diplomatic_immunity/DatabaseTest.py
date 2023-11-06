import unittest
import mysql.connector

class TestDatabase(unittest.TestCase):

    def setUp(self):
        self.cnx = mysql.connector.connect(user='scott', database='test')
        self.cursor = self.cnx.cursor()

    def test_table_bugs_exists(self):
        query = '''SELECT true FROM Bugs LIMIT 1'''
        self.cursor.execute(query)

    def test_table_bugs_column_bugid_exists(self):
        query = '''SELECT bug_id FROM Bugs LIMIT 1'''
        self.cursor.execute(query)

    # the issue_id column was removed, so this should fail
    def test_table_bugs_column_issueid_not_exists(self):
        with self.assertRaises(mysql.connector.errors.ProgrammingError) as e:
            query = '''SELECT issue_id FROM Bugs LIMIT 1'''
            self.cursor.execute(query)


if __name__ == '__main__':
    unittest.main()
