import argparse
import logging
import time
import json
import DataDb
import MessageBuffer
import MqttClient
import zmq
import dbfnProcess
import os


class MqttProcess:
    def __init__(self):
        self.message = os.getenv("MESSAGE")
        self.message_received = 0
        self.send_time = 0
        self.buff = MessageBuffer.MessageBuffer(self.message, 30)
        db = dbfnProcess.DbProcess()
        self.config = db.get_msg_params(self.message)
        self.config["server_address"] = os.getenv("SERVER_ADDRESS")
        self.config["server_port"] = int(os.getenv("SERVER_PORT"))
        print(self.config)
        db.close()
        print("Createed MQTT ")

    def run(self):
        # Create MQTT
        mqtt = MqttClient.MqttClient(self.config)
        # Create Zmq
        context = zmq.Context()

        # Socket to receive messages on
        receiver = context.socket(zmq.PULL)
        receiver.bind("tcp://*:" + str(self.config.zmq_msg_port))
        # Listen and send
        #poller = zmq.Poller()
        #poller.register(receiver, zmq.POLLIN)

        while True:
            # receive all the messages
            # print("try to get zmq data")
            # time.sleep(1)
            while receiver.poll(.1):
                data_r = receiver.recv_json()
                # print(data_l)
                # data_r = DataDb.MessageData(data_l[0], data_l[1], data_l[2],data_l[3])
                # print(time.time(), "MQTT process Received data ", len(data_r["msg"]))
                if data_r["action"] == "send":
                    self.buff.add_message(data_r["topic"], data_r["msg"])
                if data_r["action"] == "exit":
                    break
                if data_r["action"] == "log":
                    self.send_time = 0

            # print(self.buff.recovery)
                # print(msg)
            # ts = time.time()
            # ts_start = time.time()            
            msg = self.buff.get_next_messages()
            #ts_received = time.time()            
            if msg is None:
                time.sleep(1)
                continue
            t_start = time.time()
            result = mqtt.publish(msg.topic, msg.msg)
            t_sent = time.time()
            self.send_time += t_sent - t_start
            self.buff.update_state(msg, result)
            # print("get and send update msg:", ts_start ,t_sent, time.time())


if __name__ == '__main__':
    logging.basicConfig(level=logging.WARNING,
                        format='%(asctime)s : %(levelname)-7s : %(module)-15s %(message)s',
                        datefmt='%m/%d/%Y %I:%M:%S %p')

    # parser = argparse.ArgumentParser()
    # parser.add_argument("param", help="parameter json file")
    # args = parser.parse_args()

    mp = MqttProcess()
    mp.run()
