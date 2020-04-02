import sqlite3
import time
import logging
import dbfn


class DbProcess(dbfn.Db):
    def __init__(self):
        super().__init__("../ems.sqlite3")

    def get_process_params(self, process):
        q_sel = "SELECT {cols} FROM ems_process WHERE process = ?"
        cols = ["process", "zmq_process_port", "data_size"]
        server = self.get_col_dict(q_sel, cols, (process,))
        return server

    def get_process_messages_list(self, process):
        q_sel = "select msg from ems_msg where process = ?"
        return self.get_list(q_sel, (process,))

    def get_msg_params(self, msg):
        cols = ["msg", "message_type","topic","event_type","event_on","flg_clear","zmq_msg_port"]
        q_msg = "select {cols} from ems_msg where msg = ?"
        param = self.get_col_dict(q_msg, cols, (msg,))
        return dbfn.DictClass(param)

    def get_process_msg_params(self, process):
        msg_list = self.get_process_messages_list(process)
        msgs = []
        for msg in msg_list:
            msgs.append(self.get_msg_params(msg))
        return msgs

    def get_process_function_list(self, process):
        q_sel = "select id from ems_process_function where process = ?"
        return self.get_list(q_sel, (process,))

    def get_process_functions(self, process):
        fn_list = self.get_process_function_list(process)
        fns = []
        print(fn_list)
        for fid in fn_list:
            fns.append(self.get_function(fid))
        return fns

    def get_function(self, fid):
        cols = ["id", "var", "operation", "parameters", "process", "trigger", "trigger_field"]
        q_fn = "select {cols} from ems_process_function where id = ?"
        fns = self.get_col_dict(q_fn, cols, (fid,))
        return dbfn.DictClass(fns)

    def load_message_fields(self, message):
        q_msg = "select field, send from ems_msg_field where msg = ? and send = 'Y' order by seq"
        return self.get_recs(q_msg, (message,))

    ############################ unused
    # Site info functions
    def x_get_site_info(self, site_id):
        q_site = "select {cols} from emsrouter_site where id  = ?"
        cols = ["id", "name", "config_type", "mode", "data_size", "modbus_sources", "control_server", "udp_servers",
                "name_format", "mqtt_servers", "data_process"]
        param = self.get_col_dict(q_site, cols, (site_id,))
        param["devices"] = self.x_get_site_devices(param["modbus_sources"].split(","), param["name_format"])
        return param

    def x_get_site_info_by_name(self, site_name):
        q_site = "select id from emsrouter_site where name = ?"
        self.cur.execute(q_site, (site_name,))
        rec = self.cur.fetchall()
        if len(rec) == 0:
            raise KeyError
        return self.x_get_site_info(rec[0][0])

    def x_get_site_info_class(self, site_name):
        d = self.x_get_site_info_by_name(site_name)
        return dbfn.DictClass(d)

    def x_get_site_active_depricated(self):
        q_site = "select id from emsrouter_site where active='Y'"
        self.cur.execute(q_site)
        rec = self.cur.fetchall()
        if len(rec) != 1:
            logging.error("Only one site should be active")
            raise KeyError
        return self.x_get_site_info(rec[0][0])

    def x_get_site_devices(self, process_list, name_format):
        fmt = name_format.replace("_{field}", "")
        fmt = name_format.replace("{field}", "")
        q_device_type = "select distinct device_type, device_type from emsrouter_device"
        q_devices = """select d.name, c.name 
            from emsrouter_device d, emsrouter_connection c
            where d.source_type_id = c.source_type_id 
            and c.name in(""" + ",".join('?' * len(process_list)) + \
            ") and device_type = ? order by device_type"
        devices = self.get_row_dict(q_device_type)
        res = dict()
        for d in devices:
            res[d] = []
            self.cur.execute(q_devices, (process_list + [d]))
            rec = self.cur.fetchall()
            for r in rec:
                res[d].append(fmt.format(block=r[0], source=r[1]))
        return res

    def x_get_connection_format(self, mb_slave):
        q_fmt = """select f.fmt,f.size, f.scale, f.offset, d.name, f.name from emsrouter_mbquery q, emsrouter_mbdevice d, emsrouter_mbfield f
            where server_id = ? and d.query_id= q.name and f.block_id = d.block_id"""
        self.cur.execute(q_fmt, (mb_slave,))
        rec = self.cur.fetchall()
        return rec

    def x_get_connection_params_by_name(self, mb_slave):
        q_fmt = """select f.fmt,f.size, f.scale, f.offset, d.name, f.name from emsrouter_mbquery q, emsrouter_mbdevice d, emsrouter_mbfield f
            where server_id = ? and d.query_id= q.name and f.block_id = d.block_id"""
        self.cur.execute(q_fmt, (mb_slave,))
        rec = self.cur.fetchall()
        return rec

    #################################
    def x_get_process_params_multi(self, process_type, process):
        process_list = process.split(",")
        q_servers = "SELECT id FROM emsrouter_process WHERE process_type =? and name in(" + \
                    ",".join('?' * len(process_list)) + ")"
        self.cur.execute(q_servers, [process_type] + process_list)
        rec = self.cur.fetchall()
        servers = dict()
        for r in rec:
            server = self.get_process_params(r[0])
            servers[server["id"]] = server
        return servers

    def x_get_process_params_by_name(self, process_name, process_type):
        q_name = "SELECT id from emsrouter_process where name  = ? and process_type = ?"
        self.cur.execute(q_name, (process_name, process_type))
        rec = self.cur.fetchall()
        if len(rec) != 1:
            print("No data found for ", process_name, process_type)
            logging.error("No data found for " + str(process_name))
            raise KeyError
        return self.get_process_params(rec[0][0])

    def x_get_address(self, server_name):
        q_sel = "SELECT {cols} FROM emsrouter_serveraddress WHERE name = ?"
        cols = ["id", "name", "address", "port"]
        server = self.get_col_dict(q_sel, cols, (server_name,))
        return dbfn.DictClass(server)

    def x_get_server_address_class(self, server_name):
        d = self.x_get_address(server_name)
        return dbfn.DictClass(d)

    def x_get_connection_params_by_name_depricated(self, name):
        q_name = "SELECT id from emsrouter_connection where name  = ?"
        self.cur.execute(q_name, (name,))
        rec = self.cur.fetchall()
        if len(rec) == 0:
            raise KeyError
        return self.x_get_connection_params(rec[0][0])

    def x_get_connection_params(self, source_id):
        q_modbus = "SELECT {cols} from emsrouter_connection where id  = ?"
        cols = ["id", "name", "ip", "port", "unit", "start_address", "query_size", "interval", "encoding"]
        q_sel = q_modbus.format(cols=",".join(cols))
        return self.get_col_dict(q_sel, cols, (int(source_id),))

    def x_get_all_functions(self, site_id):
        q_source_function = """select var, operation, parameters 
            from emsrouter_sourcefunction f where source_type_id = ?"""
        self.cur.execute(q_source_function, (site_id,))
        fields = self.cur.fetchall()
        # print(sections)
        return fields

    def x_get_data_format(self, connection_id):
        q_block_info = """select f.dataFormat, f.size, f.scale, f.offset, c.name, b.name, f.name, c.encoding 
            from emsrouter_connection c, emsrouter_device b, emsrouter_modbusfield f
            where c.id  = ?
            and c.source_type_id = b.source_type_id
            and f.block_type_id  = b.block_type_id  """
        self.cur.execute(q_block_info, (connection_id,))
        fields = self.cur.fetchall()
        # print(sections)
        return fields

    def x_get_mb_query_for_server(self, modbus_source):
        q_sel = "SELECT name from emsrouter_mbquery where server_id = ? order by unit, address"
        self.cur.execute(q_sel, (modbus_source,))
        rec = self.cur.fetchall()
        quer = []
        for r in rec:
            quer.append(r[0])
        # print(sections)
        return quer

    def x_get_mb_query_info(self, modbus_query):
        q_sel = "SELECT {cols} from emsrouter_mbquery where name = ?"
        cols = ["unit", "address", "length"]
        q_sel = q_sel.format(cols=",".join(cols))
        return self.get_col_dict(q_sel, cols, (modbus_query,))


if __name__ == '__main__':
    print("Test")
    #db = dbfn.Db()
    # fmt = db.get_data_format(20)
    #print(fmt)
