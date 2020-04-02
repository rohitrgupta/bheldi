import logging
import ModbusMaster
import time
import zmq
import json
import dbfnModbus
import os


class ModbusTcpMaster:
    def __init__(self):
        self.slave = os.getenv("SLAVE")
        db = dbfnModbus.DbModbus()
        self.config = db.get_slave_info(self.slave)
        self.config["modbus_address"] = os.getenv("MODBUS_ADDRESS")
        self.config["modbus_port"] = os.getenv("MODBUS_PORT")
        mb_q_int = os.getenv("QUERY_INTERVAL")
        if mb_q_int is not None:
            self.config["query_interval"] = mb_q_int
        logging.info("Started MODBUS process for" + self.slave)
        db.close()

    def run(self):
        context = zmq.Context()
        sink = context.socket(zmq.PUSH)
        sink.setsockopt(zmq.SNDHWM, 10000)
        sink.connect("tcp://localhost:" + str(self.config["zmq_process_port"]))
        receiver = None
        print("***************", self.config)
        if "zmq_modbus_command_port" in self.config:
            receiver = context.socket(zmq.PULL)
            receiver.bind("tcp://*:" + str(self.config["zmq_modbus_command_port"]))
            receiver.RCVTIMEO = 30

        mm = ModbusMaster.ModbusMaster(self.config)
        mm.connect_slave()

        t_start = time.time()
        recv_ctr = 0
        while True:
            # t = time.time()
            # if t - t_start > 3600 * 12:
            #     break
            if receiver is not None:
                try:
                    # print("Try to receive")
                    data_j = receiver.recv_json()
                    # print("Received", data_j)
                    mm.updatevar_json(data_j)
                except zmq.error.Again as e:
                    # print(e)
                    pass
                # print("Continue")
            data = mm.fetch()
            recv_ctr += 1
            if recv_ctr % 1000 == 0:
                print("Received:", recv_ctr)
            # print(time.time(), "Data type", type(data))
            sink.send_json(json.dumps(data))


if __name__ == "__main__":
    print("starting")
    FORMAT = ('%(asctime)-15s %(threadName)-15s %(levelname)-8s %(module)-15s:%(lineno)-8s %(message)s')
    logging.basicConfig(filename= "../var/modbus.log", filemode='a', format=FORMAT)
    LOG = logging.getLogger()
    LOG.setLevel(logging.INFO)

    mp = ModbusTcpMaster()
    mp.run()
