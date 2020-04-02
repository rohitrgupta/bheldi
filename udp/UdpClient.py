import socket
import time
import logging
import json
from datetime import datetime


class UdpClient:
    def __init__(self, config):
        self.config = config
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        print(self.config)
        logging.info("UDP will post on " + self.config.server_address + ":" + str(self.config.server_port))

    def send(self, data):
        """Log the data to a file and send the data"""
        # print("UDP Send Called")
        ts = time.localtime()
        name = "../var/UDP_{site}_{yyyy}-{mm}-{dd}.csv"
        f_name = name.format(site=self.config.msg,
                             yyyy=ts.tm_year, mm=ts.tm_mon, dd=ts.tm_mday)
        fo = open(f_name, "a")
        fo.write(data + "\n")
        fo.close()
        # logging.info("UDP sending data:" + self.config.server_address + str(self.config.server_port) +
        #              " size:" + str(len(data)))
        # print(datetime.now(), "UDP sending data:", self.config.server_address, str(self.config.server_port), data[:30])
        msg = b'\x02' + self.config.topic.encode() + b"," + data.encode() + b'\x03'
        server_address = (self.config.server_address, self.config.server_port)
        # print("Send to", server_address)
        self.sock.sendto(msg, server_address)


if __name__ == '__main__':
    u = UdpClient("Bheldi_UDP.json")
    u.send("abcd")
    u.send("exit")
