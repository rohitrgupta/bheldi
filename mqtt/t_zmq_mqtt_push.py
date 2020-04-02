from collections import namedtuple
import zmq
import random
import time
import argparse
import json

MessageData = namedtuple("MessageData", "name topic msg action")


def zmq_push(param_file):
    with open(param_file) as json_file:
        config = json.load(json_file)

    context = zmq.Context()
    sink = context.socket(zmq.PUSH)
    sink.connect("tcp://localhost:" + str(config["zmq_mqtt_port"]))

    print("Sending message to Process")
    for task_nbr in range(5):
        #sink.send_string('Test')
        data = {"name":"n", "topic": "t", "msg": "exit", "action": "send"}
        sink.send_json(json.dumps(data))
    # Give 0MQ time to deliver
    data = {"name":"n","topic": "t", "msg": "exit", "action": "send"}
    sink.send_json(json.dumps(data))
    data = {"name":"n","topic": "t", "msg": "Text", "action": "log"}
    sink.send_json(json.dumps(data))
    data = {"name": "n", "topic": "t", "msg": "Text", "action": "exit"}
    sink.send_json(json.dumps(data))
    time.sleep(1)


if __name__ == '__main__':
    # parser = argparse.ArgumentParser()
    # parser.add_argument("test", type=int,
    #                     help="test number")
    # args = parser.parse_args()
    # print(args)
    zmq_push("Renew_MQTT.json")