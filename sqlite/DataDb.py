import dbfn
import time
from datetime import datetime

from collections import namedtuple
Message = namedtuple("Message", "id topic msg")
MessageData = namedtuple("MessageData", "name topic msg action")


class DataDb(dbfn.Db):
    def __init__(self, dbname):
        super().__init__(dbname)

    def clean(self):
        q_clean = "delete from data"
        self.cur.execute(q_clean)

    def get_last_message_id(self):
        q_create_table = """CREATE TABLE IF NOT EXISTS data (id integer PRIMARY KEY, 
            ts float, topic text, msg text, status varchar (1) )"""
        q_create_index = "CREATE INDEX IF NOT EXISTS i_status ON data (status)"
        self.cur.execute(q_create_table)
        q_max_id = "SELECT max(id) from data"
        self.cur.execute(q_max_id)
        rec = self.cur.fetchall()
        if rec[0][0] == None:
            return 0
        return rec[0][0]

    def save_data(self, data, status):
        q_insert = "insert into data (id, ts, topic, msg, status) values (?, ?, ?, ?, ?)"
        # print("Inserting:", len(data))
        ts = time.time()
        lt = datetime.now()
        # print(ts, "Save data :",  data.id, "Status:", status)
        self.cur.execute(q_insert, (data.id, ts, data.topic, data.msg, status))

    def update_data(self, data):
        q_update = "UPDATE data set status ='S', ts = ? where id = ?"
        ts = time.time()
        #lt = datetime.now(),
        self.cur.execute(q_update, (ts, data.id))
        # print("Update data :",  data.id, "Status:S", ts, time.time())

    def load_unsent_data(self, count, id_start):
        ts = time.time()
        start_id = id_start
        msg_id = None
        q_max_id = "SELECT max(id) from data"
        self.cur.execute(q_max_id)
        max_id = self.cur.fetchall()[0][0]
        # print("check request id:",id_start, "Max id:", max_id)
        if id_start == 0:
            q_min_unsent_id_all = "SELECT min(id) from data where status ='F'"
            self.cur.execute(q_min_unsent_id_all)
            msg_stat = self.cur.fetchall()
            if msg_stat[0][0] is not None:
                start_id = msg_stat[0][0] - 100
            else:
                if id_start == 0:
                    return None

        # first check if the id is less than max or not
        q_min_unsent_id = "SELECT min(id) from data where status ='F' and id >= ? and id < ?"
        while start_id <= max_id:
            # print(time.time(), "check for message", start_id, start_id + count)
            self.cur.execute(q_min_unsent_id, (start_id, start_id + count))
            msg_stat = self.cur.fetchall()
            # print("info ",msg_stat)
            if msg_stat[0][0] is not None:
                msg_id = msg_stat[0][0]
                break
            start_id += count

        # print("Get unsent id", msg_id , "in time", ts, time.time())
        if msg_id is None:
            return None
        q_load_msg = "select id, topic, msg from data where id >= ? and id <= ? and status = 'F' order by id"
        # print(len(data_p))
        self.cur.execute(q_load_msg, (msg_id, msg_id + count))
        rec =  self.cur.fetchall()
        return rec
