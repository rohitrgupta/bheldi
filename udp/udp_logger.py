import argparse
import socket
import time
import json
import logging


def main(port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    server_address = ('0.0.0.0', port)
    print('starting up on ', server_address)
    sock.bind(server_address)

    dt_prev = ""
    fo = None
    while True:
        data, address = sock.recvfrom(64000)
        print("Received", data)
        ts = time.time()
        dt = time.strftime('%Y_%m_%d', time.localtime(ts))
        if dt_prev != dt:
            if fo is not None:
                fo.close()
            fo = open(str(port) + ".csv", 'a')

        fo.write(data.decode())
        fo.write("\n")


if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s : %(levelname)-7s : %(module)-15s %(message)s',
                        datefmt='%m/%d/%Y %I:%M:%S %p')

    parser = argparse.ArgumentParser()
    parser.add_argument("config", help="config json file")
    args = parser.parse_args()

    f_config = open(args.config)
    conf = json.load(f_config)
    f_config.close()
    print(conf)
    mp = main(conf["udp_port"])
    mp.run()
    args = parser.parse_args()
    print(args.port)
    main(args.port)
