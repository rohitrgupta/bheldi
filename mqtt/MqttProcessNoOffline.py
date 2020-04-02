from collections import namedtuple
import logging
import MqttClient
import time
import json
import zmq
import argparse

MessageData = namedtuple("MessageData", "name topic msg action")

class MqttProcess:
    def __init__(self, param_file):
        self.param_file = param_file
        with open(param_file) as json_file:
            self.config = json.load(json_file)
        self.send_time = 0


    def run(self):
        # Create MQTT
        mqtt = MqttClient.MqttClient(self.param_file)
        # Create Zmq
        context = zmq.Context()

        # Socket to receive messages on
        receiver = context.socket(zmq.PULL)
        receiver.bind("tcp://*:" + str(self.config["zmq_mqtt_port"]))

        # Listen and send
        while True:
            data_r = receiver.recv_json()
            print("MQTT process Received data ", len(data_r), data_r)
            data = MessageData(data_r[0], data_r[1], data_r[2], data_r[3])
            print("MQTT data ", data)

            t_start = time.time()
            # data = json.loads(data_j)
            if data.action == "send":
                mqtt.publish(data.topic, data.msg)
            self.send_time += time.time() - t_start
            if data.action == "exit":
                break
            if data.action == "log":
                logging.info("time spent on UDP " + str(self.send_time))
                self.send_time = 0

if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s : %(levelname)-7s : %(module)-15s %(message)s',
                        datefmt='%m/%d/%Y %I:%M:%S %p')

    parser = argparse.ArgumentParser()
    parser.add_argument("param", help="parameter json file")
    args = parser.parse_args()

    mp = MqttProcess(args.param)
    mp.run()

    # TODO add test for
    # UDP data is received properly
    # UDP service restart (Ubuntu)
    # UDP File is created
    # Process is exiting
