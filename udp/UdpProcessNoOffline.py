from collections import namedtuple
import logging
import time
import json
import zmq
import UdpClient
import dbfnProcess
import os

MessageData = namedtuple("MessageData", "name topic msg action")

class UdpProcess:
    def __init__(self):
        self.message = os.getenv("MESSAGE")
        db = dbfnProcess.DbProcess()
        self.config = db.get_msg_params(self.message)
        self.config["server_address"] = os.getenv("SERVER_ADDRESS")
        self.config["server_port"] = int(os.getenv("SERVER_PORT"))
        print(self.config)
        self.send_time = 0

    def run(self):
        # Create UDP client

        udp = UdpClient.UdpClient(self.config)
        # Create Zmq
        context = zmq.Context()

        # Socket to receive messages on
        receiver = context.socket(zmq.PULL)
        receiver.bind("tcp://*:" + str(self.config.zmq_msg_port))

        # Listen and send
        while True:
            data_r = receiver.recv_json()
            # print(data_l)
            # data_r = DataDb.MessageData(data_l[0], data_l[1], data_l[2],data_l[3])
            # print("UDP process Received data ", len(data_r["msg"]))
            if data_r["action"] == "send":
                udp.send(data_r["msg"])
            if data_r["action"] == "exit":
                break


if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s : %(levelname)-7s : %(module)-15s %(message)s',
                        datefmt='%m/%d/%Y %I:%M:%S %p')

    mp = UdpProcess()
    mp.run()

    # TODO add test for
    # UDP data is received properly
    # UDP service restart (Ubuntu)
    # UDP File is created
    # Process is exiting
