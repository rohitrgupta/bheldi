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

    def get_recs(self, query, params=None):
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
        # if params is not None:
        #     self.cur.execute(q_sel, params)
        # else:
        #     self.cur.execute(q_sel)
        # rec = self.cur.fetchall()
        # if len(rec) != 1:
        #     raise KeyError
        # result = dict()
        # for i in range(len(cols)):
        #     result[cols[i]] = rec[0][i]
        # return result
        return self.get_col_dict_q(q_sel, params)

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
        cols = list(map(lambda x: x[0], self.cur.description))
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

    def export(self, query, table, site):
        self.cur.execute(query)
        rec = self.cur.fetchall()
        if len(rec) == 0:
            return
        cols = list(map(lambda x: x[0], self.cur.description))
        rec_x = rec[0]
        fo = open(site + "/" + table + ".sql","w")
        fo.write("BEGIN;\n")
        for rec_x in rec:
            r  = []
            for x in rec_x:
                if type(x) == str:
                    r.append("'" + x + "'")
                else:
                    r.append(str(x))
            s = "INSERT INTO " + table + "(" + ", ".join(cols) + ")\n"
            fo.write(s)
            s = "VALUES (" + ", ".join(r) + ");\n"
            fo.write(s)
        fo.write("COMMIT;\n")
        fo.close()