from pymodbus.datastore import ModbusSparseDataBlock
from pymodbus.server.asynchronous import StartTcpServer, StopServer
from pymodbus.device import ModbusDeviceIdentification
from pymodbus.datastore import ModbusSlaveContext, ModbusServerContext
import multiprocessing
import sys
import threading
from twisted.internet import reactor
import dbfnModbus
import ModbusBuffer
import logging


class ModbusSlave(multiprocessing.Process):
    def __init__(self, config):
        super(ModbusSlave, self).__init__()
        # self.test = test
        self.config = config
        self.exit = multiprocessing.Event()
        self.MbBlocks = dict()
        self.query_to_fetch = 0
        self.start_timer = 0
        logging.info("Started Modbus Slave" + self.config["slave"])

    def run(self):
        db = dbfnModbus.DbModbus()
        self.query_list = db.get_mb_query_for_slave_unit(self.config["slave"])
        db.close()
        print("Query list", self.query_list)
        for q in self.query_list:
            self.MbBlocks[q] = ModbusBuffer.ModbusQueryBlock(q)
        #db = dbfnModbus.DbModbus("../test.sqlite3")
        #q_data = "select key, value from test_data where site = ? and test = ?"
        #test_start = db.get_row_dict(q_data, (self.config["site"], self.test))
        #test_val = test_start.copy()

        #print("          Test Dtata:", test_val)
        #db.close()

        store = dict()
        unit_map = dict()
        #params = db.get_connection_params_by_name(self.config["slave"])
        #print(params)
        #for p in params:
        #    print(p)
        for q in self.query_list:
            print(self.MbBlocks[q].query["unit"])
            if self.MbBlocks[q].query["unit"] not in unit_map:
                unit_map[self.MbBlocks[q].query["unit"]] = dict()
            print(self.MbBlocks[q])
            # self.MbBlocks[q].set_values_if_present(test_val)
            registers = self.MbBlocks[q].reg
            unit_map[self.MbBlocks[q].query["unit"]][self.MbBlocks[q].query["start_address"]] = registers

        # print(unit_map)
        for u in unit_map:
            data = dict()
            # time.sleep(3)
            for start_address in unit_map[u]:
                # print("Address:", u, start_address)
                for x in range(len(unit_map[u][start_address])):
                    # print(x, unit_map[u][start_address][x])
                    data[start_address + x + 1] = unit_map[u][start_address][x]

            print("Data:,", data)
            block = ModbusSparseDataBlock(data)
            print("Data Block:",block)
            store1 = ModbusSlaveContext(hr=block)

            store[u] = store1
            print("added for unit ", u, store)
        context = ModbusServerContext(slaves=store, single=False)

        # for k in store:
        #    print(k)
        #    print(context[k])

        # print("CTX", context)
        for s in context:
            print("********************Slave", s)

        identity = ModbusDeviceIdentification()
        identity.VendorName = 'Pymodbus'
        identity.ProductCode = 'PM'
        identity.VendorUrl = 'http://github.com/riptideio/pymodbus/'
        identity.ProductName = 'Pymodbus Server'
        identity.ModelName = 'Pymodbus Server'
        identity.MajorMinorRevision = '2.2.0'

        time = 1 # 5 seconds delay
        # loop = LoopingCall(f=updating_writer, a=(context, test_val, test_start, test_max, test_step, site_params))
        # loop.start(time, now=False)  # initially delay by time

        print("Server at:", self.config)
        for u in unit_map:
            print("Adding Unit:", u)
        print(store)
        StartTcpServer(context, identity=identity, address=("0.0.0.0", self.config["modbus_port"]),
                       defer_reactor_run=True)
        #reactor.run()
        print("Starting Server")
        t = threading.Timer(1, self.check_and_stop)
        t.daemon = True
        t.start()
        reactor.run()
        # print("Starting Server at:", params["ip"], params["port"])
        # StartTcpServer(context, identity=identity, address=(params["ip"], params["port"]))
        print("stopping ")

    def check_and_stop(self):
        # print("Check Called")
        if self.exit.is_set():
            StopServer()
            sys.exit(0)
        t = threading.Timer(1, self.check_and_stop)
        t.daemon = True
        t.start()

    def stop(self):
        print('Process will be down.')
        self.exit.set()

    # TODO put error checking as part of startup code


if __name__ == '__main__':
    #m_con = ModbusConnection("test_modbus.json")
    #m_con.connect_slave()
    #m_con.fetch()
    m_s = ModbusSlave("test_modbus.json", 13)
    m_s.run()