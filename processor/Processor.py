import zmq
import dbfnProcess
import ProcessingBuffer
import logging
import json
# import argparse
import time
import os
# import tracemalloc
# from mem_top import mem_top


class Processor:
    def __init__(self):
        process = os.getenv("SITE")
        # tracemalloc.start()
        db = dbfnProcess.DbProcess()
        self.config = db.get_process_params(process)
        print(self.config)
        # self.out_queues = out_queues
        self.pb = ProcessingBuffer.ProcessingBuffer(process, self.config["data_size"])
        context = zmq.Context()
        self.out_queues = dict()
        messages = db.get_process_msg_params(process)
        for m in messages:
            msg_sink = context.socket(zmq.PUSH)
            msg_sink.connect("tcp://localhost:" + str(m.zmq_msg_port))
            self.out_queues[m.msg] = msg_sink
            #self.pb.add_message_params(m.msg, m.fields, m.topic, m.J, m.trigger, m.trigger_field, m.clear)
            self.pb.add_message_params(m)

        for fn in db.get_process_functions(process):
            self.pb.add_function(fn)
        db.close()

        # Socket to receive messages on
        self.receiver = context.socket(zmq.PULL)
        self.receiver.bind("tcp://*:" + str(self.config["zmq_process_port"]))

    def run(self):
        recv_ctr = 0
        send_ctr = 0
        while True:
            time.sleep(.01)
            data_j = self.receiver.recv_json()

            # print("data received", type(data_j))
            data = json.loads(data_j)
            # print("data received", data["ts"], next(iter(data)))
            self.pb.recv_data(data)
            recv_ctr += 1
            if recv_ctr % 300 == 0:
                print("Processor Received:", recv_ctr , "Sent:", send_ctr)
                # snapshot=tracemalloc.take_snapshot()
                # print(mem_top())
                # for i, stat in enumerate(snapshot.statistics("filename")[:5], 1):
                #     print("top_current",i, str(stat))

            while True:
                # time.sleep(.001)
                # print("Message Queue", self.pb.message)
                msg = self.pb.get_message()
                if msg is None or msg.msg is None:
                    time.sleep(.001)
                    break
                # print("Send ", time.time(), msg.name, type(msg.msg))
                # send json or string
                self.out_queues[msg.name].send_json(msg)
                send_ctr += 1



if __name__ == '__main__':
    # parser = argparse.ArgumentParser()
    # parser.add_argument("config",
    #                     help="config file")
    # args = parser.parse_args()
    FORMAT = ('%(asctime)-15s %(threadName)-15s %(levelname)-8s %(module)-15s:%(lineno)-8s %(message)s')
    logging.basicConfig(filename='../var/log/processor.log', filemode='a', format=FORMAT)
    #logging.basicConfig(filename='log/' + args.config.split(".")[0] + ".log", filemode='a', format=FORMAT)
    LOG = logging.getLogger()
    # LOG.setLevel(logging.DEBUG)
    LOG.setLevel(logging.INFO)
    print("Starting Processor")
    # print(args.config)
    p = Processor()
    p.run()
