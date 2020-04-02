import sqlite3

class DictClass(dict):
    __getattr__ = dict.__getitem__
    __setattr__ = dict.__setitem__
    __delattr__ = dict.__delitem__

class Db:
    def __init__(self, dbname):
        self.dbname = dbname
        self.conn = sqlite3.connect(self.dbname)
        # print("Dbfn Connecting to ", self.dbname)
        self.cur = self.conn.cursor()

    def commit(self):
        self.conn.commit()

    def close(self):
        self.conn.close()

    def get_recs(self, query , params=None):
        if params is not None:
            self.cur.execute(query, params)
        else:
            self.cur.execute(query)
        rec = self.cur.fetchall()
        return rec

    def get_row_dict(self, query, params=None):
        """Return a two column table as a dict"""
        recs = self.get_recs(query, params)
        return dict(recs)

    def get_col_dict(self, query, cols, params=None):
        """Return single row from the database as a dict"""
        # print(query, cols, params)
        q_sel = query.format(cols=",".join(cols))
        if params is not None:
            self.cur.execute(q_sel, params)
        else:
            self.cur.execute(q_sel)
        rec = self.cur.fetchall()
        if len(rec) != 1:
            raise KeyError
        result = dict()
        for i in range(len(cols)):
            result[cols[i]] = rec[0][i]
        return result

    def get_col_dict_q(self, q_sel, params=None):
        """Return single row from the database as a dict"""
        # print(query, cols, params)
        if params is not None:
            self.cur.execute(q_sel, params)
        else:
            self.cur.execute(q_sel)
        rec = self.cur.fetchall()
        if len(rec) != 1:
            raise KeyError
        cols = list(map(lambda x: x[0], cur.description))
        result = dict()
        for i in range(len(cols)):
            result[cols[i]] = rec[0][i]
        return result


    def get_list(self, query, params=None):
        """Returns a list of values if single column is selected."""
        if params is not None:
            self.cur.execute(query, params)
        else:
            self.cur.execute(query)
        rec = self.cur.fetchall()
        result = []
        for r in rec:
            # print(r[0])
            result.append(r[0])
        return result