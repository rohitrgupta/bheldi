from pymodbus.payload import BinaryPayloadBuilder, BinaryPayloadDecoder
from pymodbus.constants import Endian
import logging
import math


def compute_size(var_type):
    v_type = None
    v_size = 0
    if var_type in ['uint16', "int16"]:
        v_type = var_type
        v_size = 1
    elif var_type in ['uint32', "float32"]:
        v_type = var_type
        v_size = 2
    elif var_type in ["int32", "sint32"]:
        v_type = "int32"
        v_size = 2
    elif var_type[:3] == "str":
        v_type = "str"
        v_size = int(int(var_type[3:]) / 2)
    else:
        logging.error("invalid type:" + var_type)
        raise TypeError
    return v_type, v_size


class MbVariable:
    def __init__(self, name, var_type, encoding, scale, offset):
        self.name = name
        # do not allow invalid encoding
        if encoding not in ["BB", "LB", "BL", "LL", "ABCD", "CDAB", "BADC",  "DCBA"]:
            logging.error("invalid Encoding:" + encoding + " For " + name)
            raise KeyError
        self.encoding = encoding
        self.type, self.size = compute_size(var_type)
        self.value = 0
        self.bpb = None
        self.bpd = None
        self.scale = float(scale)
        self.offset = float(offset)
        self.registers = [0] * self.size
        self.set_builder()
        self.register = None

    def __str__(self):
        return self.name

    def set_var_register(self, reg):
        # print("decoding ", self.name, self.type, reg)
        if self.encoding in ['BB', 'ABCD']:
            self.bpd = BinaryPayloadDecoder.fromRegisters(reg, byteorder=Endian.Big, wordorder=Endian.Big)
        elif self.encoding in ['BL', 'CDAB']:
            self.bpd = BinaryPayloadDecoder.fromRegisters(reg, byteorder=Endian.Big, wordorder=Endian.Little)
        elif self.encoding in ['LL', 'DCBA']:
            self.bpd = BinaryPayloadDecoder.fromRegisters(reg, byteorder=Endian.Little, wordorder=Endian.Little)
        elif self.encoding in ['LB', 'BADC']:
            self.bpd = BinaryPayloadDecoder.fromRegisters(reg, byteorder=Endian.Little, wordorder=Endian.Big)
        else:
            raise KeyError
        self.register = reg

        if self.type == "uint16":
            val = self.bpd.decode_16bit_uint() * self.scale + int(self.offset)
        elif self.type in ["sint16", "int16"]:
            val = self.bpd.decode_16bit_int() * self.scale + int(self.offset)
        elif self.type in ["uint32"]:
            val = self.bpd.decode_32bit_uint() * self.scale + int(self.offset)
        elif self.type in ["sint32", "int32"]:
            val = self.bpd.decode_32bit_int() * self.scale + int(self.offset)
        elif self.type in ["float32"]:
            val = self.bpd.decode_32bit_float() * self.scale + int(self.offset)
        elif self.type == "str":
            val1 = self.bpd.decode_string(self.size)
            val = val1.decode()
        else:
            logging.error("Unknown data type" + self.type)
            raise KeyError
        if math.isnan(val):
            self.value = 0
        else:
            self.value = val

    def set_builder(self):
        if self.encoding in ['BB', 'ABCD']:
            self.bpb = BinaryPayloadBuilder(byteorder=Endian.Big, wordorder=Endian.Big)
        elif self.encoding in ['BL', 'CDAB']:
            self.bpb = BinaryPayloadBuilder(byteorder=Endian.Big, wordorder=Endian.Little)
        elif self.encoding in ['LL', 'DCBA']:
            self.bpb = BinaryPayloadBuilder(byteorder=Endian.Little, wordorder=Endian.Little)
        elif self.encoding in ['LB', 'BADC']:
            self.bpb = BinaryPayloadBuilder(byteorder=Endian.Little, wordorder=Endian.Big)
        else:
            raise KeyError

    def set_value(self, value):
        self.set_builder()
        self.set_reg_value(value)
        self.value = value

    def set_reg_value(self, value):
        if self.type == "uint16":
            v_raw = int((float(value) - self.offset) / self.scale)
            if v_raw < 0:
                logging.warning("Negative value for " + self.name + ":" + str(v_raw))
                v_raw = 0
            self.bpb.add_16bit_uint(v_raw)
        elif self.type == "int16":
            self.bpb.add_16bit_int(int((float(value) - self.offset) / self.scale))
        elif self.type == "uint32":
            v_raw = int((float(value) - self.offset) / self.scale)
            if v_raw < 0:
                logging.warning("Negative value for " + self.name + ":" + str(v_raw))
                v_raw = 0
            self.bpb.add_32bit_uint(v_raw)
        elif self.type == "int32":
            self.bpb.add_32bit_int(int((float(value) - self.offset) / self.scale))
        elif self.type == "float32":
            self.bpb.add_32bit_float(int((float(value) - self.offset) / self.scale))
        elif self.type == "str":
            value_str = " " * (self.size - len(str(value))) + str(value)
            self.bpb.add_string(value_str)
        else:
            logging.error("Unknown format:" + self.type + " for " + self.name)
            raise ValueError
        self.registers = self.bpb.to_registers()
        logging.debug("Updated var register " + str(self.registers))


if __name__ == '__main__':
    print("Test")
