import sqlite3
import dbfn


class DbModbus(dbfn.Db):
    def __init__(self, dbname="../ems.sqlite3"):
        super().__init__(dbname)

    def get_slave_info(self, slave):
        cols = ["slave", "zmq_command_port", "process", "query_interval"]
        q_sel = "SELECT {cols} from ems_mb_slave where slave = ?"
        d = self.get_col_dict(q_sel, cols, (slave,))
        print(d)
        p =self.get_process_info(d["process"])
        d["zmq_process_port"] = p["zmq_process_port"]
        return dbfn.DictClass(d)

    def get_process_info(self, process):
        cols = ["zmq_process_port", "process"]
        q_sel = "SELECT {cols} from ems_process where process = ?"
        return self.get_col_dict(q_sel, cols, (process,))


    def get_mb_query_for_slave_unit(self, slave, unit=None):
        if unit is not None:
            q_sel = "SELECT query from ems_mb_query where slave = ? and unit = ?"
            result = self.get_list(q_sel, (slave, unit))
        else:
            q_sel = "SELECT query from ems_mb_query where slave = ?"
            result = self.get_list(q_sel, (slave, ))
        return result

    def get_mb_query(self, query):
        cols = ["query", "unit", "start_address", "slave", "length"]
        q_sel = "SELECT {cols} from ems_mb_query where query = ?"
        d = self.get_col_dict(q_sel, cols, (query,))
        return dbfn.DictClass(d)

    def get_section_lengthXXX(self, section):
        q_sel = "SELECT fmt, count(*) from ems_mb_field where swction = ? group bu fmt"
        rec = self.get_recs(q_sel, section)
        section_length = 0
        for d in rec:
            if d[0] in  ["uint16", "int16"]:
                section_length += 1 * d[1]
            if d[0] in  ["float32","uint32", "sint32"]:
                section_length += 1 * d[1]
        return section_length

    def get_mb_device(self, device, query):
        cols = ["device", "section", "query"]
        q_sel = "SELECT {cols} from ems_mb_device where device = ? and query = ?"
        d = self.get_col_dict(q_sel, cols, (device, query))
        return dbfn.DictClass(d)

    def get_mb_devices(self, query):
        q_sel = "SELECT device, query from ems_mb_device where query = ?"
        self.cur.execute(q_sel, (query,))
        rec = self.cur.fetchall()
        res = []
        for r in rec:
            d = self.get_mb_device(r[0], r[1])
            res.append(d)
        return res

    def get_mb_field(self, name, section):
        cols = ["field", "section", "fmt", "encoding", "scale", "offset", "seq"]
        q_sel = "SELECT {cols} from ems_mb_field where seq = ? and section = ?"
        d = self.get_col_dict(q_sel, cols, (name, section))
        if d["fmt"] in  ["uint16", "int16"]:
            d["length"] = 1
        elif d["fmt"] in  ["float32","uint32", "sint32"]:
            d["length"] = 2
        elif d["fmt"] == "str16":
            d["length"] = 16
        elif d["fmt"] == "str20":
            d["length"] = 20
        else:
            print("Unknown fmt", d)
        return dbfn.DictClass(d)

    def get_mb_fields(self, section=None):
        q_sel = "SELECT seq, section from ems_mb_field where section = ? order by seq"
        self.cur.execute(q_sel, (section,))
        rec = self.cur.fetchall()
        res = []
        query_length = 0
        for r in rec:
            d = self.get_mb_field(r[0], r[1])
            query_length += d.length
            res.append(d)
        return res
