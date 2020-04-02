import time
import json
import argparse
import logging
import ModbusMaster
import dbfnModbus
import ModbusBuffer


class TestGen:
    def __init__(self, var, value_start, value_end, value_step, pattern):
        self.var_name = var
        self.curr_val_no = 0
        self.pattern = pattern
        self.val = value_start
        self.value_start = value_start
        if self.pattern == "rotate":
            self.value_end = int(value_end)
            self.value_start = int(self.value_start)
            self.value_step = [int(x) for x in value_step.split(",")]
        else:
            self.value_end = value_end
            self.value_start = self.value_start
            self.value_step = value_step
        self.direction = 1

    def get_next(self):
        if self.pattern == "saw":
            self.val += self.value_step * self.direction
            if self.val > self.value_end:
                self.val = self.value_start
        elif self.pattern == "xor":
            self.val = self.val ^ self.value_step
        elif self.pattern == "rotate":
            self.val = self.value_step[self.curr_val_no]
            self.curr_val_no += 1
            # print("Curr val", self.curr_val_no)
            if self.curr_val_no >= len(self.value_step):
                self.curr_val_no = 0
        return self.val

class ModbusUpdater:
    def __init__(self, slave, test_no, sleep_time=1):
        self.slave = slave
        self.test_no = test_no
        self.tests = dict()
        self.test_list = []
        self.cur_test = 0
        self.sleep_time = sleep_time
        db = dbfnModbus.DbModbus()
        self.config = db.get_slave_info(self.slave)
        logging.info("Started MODBUS process for" + slave)
        db.close()
        # load parameters for the variables
        self.mm = ModbusMaster.ModbusMaster(self.config)
        self.mm.connect_slave()

    def setupModbusUpdater(self):
        db = dbfnModbus.DbModbus()
        query_list = db.get_mb_query_for_slave_unit(self.config["slave"])
        db.close()
        mb_blocks = dict()
        # print("Query list", query_list)
        for q in query_list:
            mb_blocks[q] = ModbusBuffer.ModbusQueryBlock(q)

        db = dbfnModbus.DbModbus("../test.sqlite3")
        q_data = "select id, key, value, value_max, step, pattern from test_data where site = ? and test = ?"
        # print(q_data)
        test_start = db.get_recs(q_data, (self.config.slave, self.test_no))
        # print(test_start)
        for t in test_start:
            self.tests[t[0]] = TestGen(t[1], t[2], t[3], t[4], t[5])
            # print(self.tests[t[0]].var_name)
        self.test_list = list(self.tests.keys())
        # print(self.test_list)

        # t_start = time.time()

    def run_test(self):
        data = dict()
        #print(self.cur_test, self.test_list[self.cur_test])
        #print(self.tests[self.test_list[self.cur_test]].value_step)
        print("Print running test",self.tests)
        name = self.tests[self.test_list[self.cur_test]].var_name
        # while 1:
        time.sleep(self.sleep_time)
        and_val = self.tests[self.test_list[self.cur_test]].value_end
        val = self.tests[self.test_list[self.cur_test]].get_next()
        # print(name, and_val, val)
        data[name] = val
        data_j = json.dumps(data)
        print("Update Data:", data)
        self.mm.updatevar_json(data_j)

        if and_val == val:
            # print("start_value", self.cur_test)
            self.cur_test += 1
            if self.cur_test >= len(self.test_list):
                self.cur_test = 0
        self.mm.fetch()
        data_recv = self.mm.get_data()
        # print("Received Data:", data_recv)
        return data_j


if __name__ == "__main__":
    logging.basicConfig(level=logging.WARNING,
                        format='%(asctime)s : %(levelname)-7s : %(module)-15s %(message)s',
                        datefmt='%m/%d/%Y %I:%M:%S %p')
    parser = argparse.ArgumentParser()
    parser.add_argument("slave",
                        help="config file")
    parser.add_argument("test", type=int,
                        help="test number")
    args = parser.parse_args()
    print(args.slave, args.test)
    mp = ModbusUpdater(args.slave, args.test)
    mp.setupModbusUpdater()
    mp.run_test()
    mp.run_test()
    mp.run_test()
    mp.run_test()
    mp.run_test()
    # v = ValueGen(10, 15, 1, "saw")
    # for _ in range(12):
    #    print(v.get_next())

    # v = ValueGen(1, 4, 4, "xor")
    # for _ in range(12):
    #    print(v.get_next())
