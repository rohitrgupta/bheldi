from pymodbus.payload import BinaryPayloadBuilder, BinaryPayloadDecoder
from pymodbus.constants import Endian
import logging
import dbfnModbus
import ModbusVariable


class ModbusQueryBlock:
    """ Make a query block"""

    def __init__(self, query_name):
        db = dbfnModbus.DbModbus()
        try:
            self.query = db.get_mb_query(query=query_name)
        except KeyError:
            logging.error("No data exist for query:" + query_name)
            raise KeyError
        self.reg = [0] * self.query.length
        self.var = dict()
        self.varNull = dict()
        self.devices = db.get_mb_devices(query=self.query.query)
        print(self.devices)
        self.varDictName = dict()
        self.regDictAddr = dict()
        self.dictVarAddr = dict()
        address = 0
        # print(self.query, self.devices)
        for d in self.devices:
            print(d)
            # get fields for block
            # print(" for:", d.name, "Size before  = ", len(self.var))
            fields = db.get_mb_fields(section=d.section)
            for f in fields:
                var_name = d.device + "_" + f.field
                var = ModbusVariable.MbVariable(var_name, f.fmt, f.encoding, f.scale, f.offset)
                self.var[var_name] = 0
                self.varNull[var_name] = 0
                self.varDictName[var_name] = var
                self.regDictAddr[address] = var
                self.dictVarAddr[var_name] = address
                address += var.size
                # print("    ", f)
            # print(self.varDict)
            # print("Prepared fields for:", query_name, d.name, "Size after  = ", len(self.var))

    def set_values_if_present(self, values):
        for v in values:
            if v in self.var:
                self.var[v] = values[v]
                self.varDictName[v].set_value(values[v])
            # print("Set ", v, values[v], self.varDict[v].registers)
        for a in self.regDictAddr:
            for x in range(self.regDictAddr[a].size):
                self.reg[a + x] = self.regDictAddr[a].registers[x]

    def set_values(self, values):
        for v in values:
            self.var[v] = values[v]
            self.varDictName[v].set_value(values[v])
            # print("Set ", v, values[v], self.varDict[v].registers)
        for a in self.regDictAddr:
            for x in range(self.regDictAddr[a].size):
                self.reg[a + x] = self.regDictAddr[a].registers[x]

    def set_register(self, reg):
        if len(reg) != self.query.length:
            #raise IndexError
            print("Register Length not same")
        self.reg = reg
        for a in self.regDictAddr:
            data = reg[a:a + self.regDictAddr[a].size]
            self.regDictAddr[a].set_var_register(data)
            self.var[self.regDictAddr[a].name] = self.regDictAddr[a].value

    def get_update_value(self, var, val):
        result = None
        # print("get_update_value Called")
        if var in self.dictVarAddr:
            address_var = self.dictVarAddr[var]
            self.varDictName[var].set_value(val)
            print("Updated values", self.varDictName[var].registers, self.query)
            result = (self.query["unit"], self.query["start_address"] + address_var, self.varDictName[var].registers)
        return result


if __name__ == '__main__':
    m_con = ModbusQueryBlock("TestQEncoding")
    print(m_con.dictVarAddr)
    print(m_con.get_update_value("TestEncoding_varE7", 2))
    print(m_con.get_update_value("TestEncoding_varE7", 3))
    # m_con.connect_slave()
    # m_con.fetch()
    # m_s = ModbusSlave("test_modbus.json", 13)
    # m_s.run()
