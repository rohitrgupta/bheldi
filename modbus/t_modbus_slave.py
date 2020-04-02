import logging
import time
import ModbusSlave
import dbfnModbus
import os

# FORMAT = ('%(asctime)-15s %(threadName)-15s'
#          ' %(levelname)-8s %(module)-15s:%(lineno)-8s %(message)s')


if __name__ == "__main__":
    slave = os.getenv("SLAVE")
    FORMAT = ('%(asctime)-15s %(threadName)-15s %(levelname)-8s %(module)-15s:%(lineno)-8s %(message)s')
    logging.basicConfig(filename='../var/log/ems_slave_' + slave + ".log", filemode='a', format=FORMAT)
    # logging.basicConfig(format=FORMAT)
    LOG = logging.getLogger()
    LOG.setLevel(logging.INFO)

    db = dbfnModbus.DbModbus()
    config = db.get_slave_info(slave)
    db.close()
    config["modbus_address"] = "0.0.0.0"
    config["modbus_port"] = int(os.getenv("MODBUS_PORT"))    
    print(config)
    p = ModbusSlave.ModbusSlave(config)
    p.start()

    while True:
        time.sleep(1)
    # main(args.site, args.test)
    # p.stop()
    # p.join()
    # p.terminate()
    # p.join()
