import pymodbus.client.sync
import pymodbus.pdu
import traceback
import pymodbus.exceptions
import time
import copy
import logging
import dbfnModbus
import ModbusBuffer
import json


class ModbusMaster:
    def __init__(self, config):
        self.config = config
        print(self.config)
        db = dbfnModbus.DbModbus()
        self.MbBlocks = dict()
        self.query_to_fetch = 0
        self.query_list = db.get_mb_query_for_slave_unit(self.config["slave"])
        db.close()
        print(self.query_list)
        for q in self.query_list:
            self.MbBlocks[q] = ModbusBuffer.ModbusQueryBlock(q)
        self.start_timer = 0
        self.client = None

    def connect_slave(self):
        self.client = pymodbus.client.sync.ModbusTcpClient(self.config["modbus_address"], port=self.config["modbus_port"],
                                                           timeout=1)

    def next_query(self):
        self.query_to_fetch += 1
        if self.query_to_fetch >= len(self.query_list):
            self.query_to_fetch = 0

    def get_null_data(self):
        curr_block = self.MbBlocks[self.query_list[self.query_to_fetch]]
        d2 = self.MbBlocks[self.query_list[self.query_to_fetch]].varNull
        ts = time.time()
        timestamp = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(ts))
        device_name = self.MbBlocks[self.query_list[self.query_to_fetch]].devices[0]["query"]
        d2[device_name + "_timestamp_" + str(curr_block.query.unit) + "_" + str(curr_block.query.start_address)] = timestamp
        d2["timestamp"] = timestamp
        d2["Alert_" + self.config["slave"] + "_modbus_error"] = 1
        d2["ts"] = ts
        self.next_query()
        return d2

    def get_data(self):
        curr_block = self.MbBlocks[self.query_list[self.query_to_fetch]]
        d2 = self.MbBlocks[self.query_list[self.query_to_fetch]].var
        ts = time.time()
        timestamp = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(ts))
        device_name = self.MbBlocks[self.query_list[self.query_to_fetch]].devices[0]["device"]
        d2[device_name + "_timestamp_" + str(curr_block.query.unit) + "_" + str(curr_block.query.start_address)] = timestamp
        d2["timestamp"] = timestamp
        d2["Alert_" + self.config["slave"] + "_modbus_error"] = 0
        d2["ts"] = ts
        # print(d2)
        self.next_query()
        return d2

    def fetch(self):
        self.wait_for_next_query()
        # print(self.query_list)
        curr_block = self.MbBlocks[self.query_list[self.query_to_fetch]]
        # print(time.time(), "Modbus Query Block", curr_block.query)
        modbus_unit = curr_block.query["unit"]
        start = curr_block.query["start_address"]
        query_length = curr_block.query["length"]
        try:
            logging.debug("MB Query " + self.config["modbus_address"] + "port:" + str(self.config["modbus_port"]) +
                          " Unit:" + str(modbus_unit) + " Start: " + str(start) + " Lenght: " + str(query_length))
            modbus_reply = self.client.read_holding_registers(start, query_length, unit=modbus_unit)
            # print("TYpe of response", type(modbus_reply))
        except pymodbus.exceptions.ConnectionException:
            logging.error(
                "Error in connecting to:" + self.config["modbus_address"] + "port:" + str(self.config["modbus_port"]) +
                " Unit:" + str(modbus_unit) + " Start: " + str(start) + " Lenght: " + str(query_length))
            print("Modbus Error 1", self.config["slave"], curr_block.query["query"])
            return self.get_null_data()

        if type(modbus_reply) == pymodbus.pdu.ExceptionResponse:
            logging.error(
                "Incorrect response for:" + self.config["modbus_ip"] + "port:" + str(self.config["modbus_port"]) +
                " Unit:" + str(modbus_unit) + " Start: " + str(start) + " Lenght: " + str(query_length) +
                " Resp: " + str(modbus_reply))
            print("Modbus Error 2", self.config["slave"], curr_block.query["name"])
            return self.get_null_data()

        try:
            register_data = copy.copy(modbus_reply.registers)
            # print(start, data)
        except Exception as err1:
            print("Modbus returned Error:", err1, modbus_unit, start, query_length)
            logging.error(traceback.format_exc())
            return self.get_null_data()
        curr_block.set_register(register_data)
        return self.get_data()

    def wait_for_next_query(self):
        time.sleep(.001)
        curr_time = time.time()
        s_passed = curr_time - self.start_timer
        # print("Previous query ",  self.start_timer , "This time ", curr_time, uc_passed/ 1000)
        delay_s = self.config["query_interval"] - s_passed
        if delay_s <= 0:
            delay_s = 0
        time.sleep(delay_s)
        curr_time = time.time()
        # print("delay", self.query_to_fetch, self.start_timer, curr_time, delay_s, s_passed)
        self.start_timer = curr_time
        return delay_s, s_passed

    def update_var(self, var, value):
        upd_param = None
        update_block = None
        for q in self.query_list:
            if upd_param is None:
                upd_param = self.MbBlocks[q].get_update_value(var, value)
                update_block = q
        if upd_param is not None:
            print("Writing to:", update_block, upd_param)
            self.client.write_registers(unit=upd_param[0], address=upd_param[1], values=upd_param[2])

    def updatevar_json(self, json_data):
        # validate the json
        # print(json_data)
        json_vars = json.loads(json_data)
        for v in json_vars:
            self.update_var(v, json_vars[v])

    # TODO put error checking as part of startup code


if __name__ == '__main__':
    m_con = ModbusMaster("Renew_plc_modbus.json")
    m_con.connect_slave()
    data = m_con.fetch()
    print(data["PLC_Inv_Operation_command"])
    # m_con.update_var("TestEncoding_varE7", 2)
    m_con.updatevar_json('{"PLC_Inv_Operation_command": 3}')
    data = m_con.fetch()
    print(data["PLC_Inv_Operation_command"])
    # m_con.connect_slave()
    # m_con.fetch()
    # m_con.fetch()
    # m_con.fetch()
    # m_con.fetch()
