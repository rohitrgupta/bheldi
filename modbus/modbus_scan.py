import argparse
import pymodbus.pdu
import pymodbus.client.sync
import time


def scan_modbus(arg):
    client = pymodbus.client.sync.ModbusTcpClient(arg.ip, port=arg.port)
    time.sleep(3)
    for start in range(arg.start, arg.end, arg.size):
        modbus_reply = client.read_holding_registers(start, arg.size, unit=arg.unit)
        print(start, modbus_reply)
        if type(modbus_reply) != pymodbus.pdu.ExceptionResponse:
            print("Resp", modbus_reply.registers)
        time.sleep(0.2)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("ip",
                        help="IP")
    parser.add_argument("port", type=int,
                        help="port")
    parser.add_argument("unit", type=int,
                        help="unit")
    parser.add_argument("start", type=int,
                        help="start")
    parser.add_argument("end", type=int,
                        help="end")
    parser.add_argument("size", type=int,
                        help="size")
    args = parser.parse_args()
    print(args)
    scan_modbus(args)
