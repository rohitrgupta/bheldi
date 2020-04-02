from collections import namedtuple
from collections import deque
import time
import json
import statistics
import math
import logging
import dbfnProcess
import psutil
import os
# import sys
# import objgraph

MessageData = namedtuple("MessageData", "name topic msg action")


class MessageFormat:
    def __init__(self, msg):
        self.name = msg.msg
        self.fmt = msg.message_type
        self.topic = msg.topic
        self.clear = msg.flg_clear
        self.trigger_type = msg.event_type
        self.next_trigger_time = 0
        if self.trigger_type == "T":
            self.trigger = float(msg.event_on)
        else:
            self.trigger = msg.event_on
        db = dbfnProcess.DbProcess()

        fields_d = db.load_message_fields(msg.msg)
        print("Fields for Message:", msg.msg, fields_d)
        
        # self.header = ",".join(list(fields_d.keys()))
        self.header = ",".join([x[0] for x in fields_d])
        self.fields = [x[0] for x in fields_d]
        # print("Fields dict", fields_d)
        # add Ems_Alert

    def set_next_message_execution(self, t_exec=None):
        if t_exec is None:
            ts_trigger = (int(time.time() / self.trigger) + 1) * self.trigger
        else:
            ts_trigger = (int(t_exec / self.trigger) + 1) * self.trigger
        self.next_trigger_time = ts_trigger
        # print("Set next exec",self.next_trigger_time)

    def __str__(self):
        return self.name + ":" + self.header + "@" + str(self.trigger) + " Next execution: " + \
               str(self.next_trigger_time)


class Function:
    def __init__(self, fn):
        self.var = fn.var
        self.fn = fn.operation
        self.params = fn.parameters.split(",")
        self.trigger_type = fn.trigger
        self.next_trigger_time = 0
        if self.trigger_type == 'T':
            self.trigger = int(fn.trigger_field)
            self.set_next_function_execution()
        else:
            self.trigger = fn.trigger_field

    def __str__(self):
        return self.var + " = " + self.fn + "(" + ",".join(self.params) + ")" + "@" + str(self.trigger) + \
               " Next execution: " + str(self.next_trigger_time)

    def set_next_function_execution(self, t_exec=None):
        if t_exec is None:
            # ts_trigger = (int(time.time() / self.trigger) + 1) * self.trigger
            ts_trigger = 0
        else:
            ts_trigger = (int(t_exec / self.trigger) + 1) * self.trigger
        self.next_trigger_time = ts_trigger


class ProcessingBuffer:
    """ field ALL include the latest values of added variables and none of the computed variables
    """

    def __init__(self, process_name, var_count):
        # from site read the modbus connections and build the buffer
        self.var_count = var_count
        self.process_name = process_name
        self.latest = dict()
        self.hist = dict()
        # self.previous = dict()
        self.changed = dict()
        self.functions = dict()  # var , fn , params
        self.function_field_trigger = dict()
        self.message_format = dict()  # store Fields, Topic, Trigger type, Trigger criteria
        self.message_field_trigger = dict()
        self.message = deque()
        self.all_data_status = False
        self.last_print_time = 0
        logging.info("Started Processing Buffer:" + process_name)

    def add_message_params(self, msg):
        #mf = MessageFormat(name, fields, topic, fmt, trigger_type, trigger_field, clear)
        self.message_format[msg.msg] = MessageFormat(msg)
        if msg.event_type == 'F':
            if msg.event_on not in self.message_field_trigger:
                self.message_field_trigger[msg.event_on] = []
            self.message_field_trigger[msg.event_on].append(msg.msg)

    def add_function(self, fn):
        self.functions[fn.var] = Function(fn)
        if fn.trigger == 'F':
            if fn.trigger_field not in self.function_field_trigger:
                self.function_field_trigger[fn.trigger_field] = []
            self.function_field_trigger[fn.trigger_field].append(fn.var)

    def incr_value(self, var):
        if var not in self.latest:
            self.latest[var] = 1
            self.changed[var] = True
            self.hist[var] = []
        else:
            if self.latest[var] is None:
                self.latest[var] = 0
            self.changed[var] = True
            self.latest[var] += 1

    def add_value(self, var, val):
        # if the var is received first time
        if var not in self.latest:
            self.latest[var] = val
            self.changed[var] = False
            if val != 0:
                if "Alert" in var:
                    print("Changed", var, val)
                self.changed[var] = True
            self.hist[var] = []
        else:
            # if variable is present update only if it is not None
            if val is not None:
                # detect change from previous value, None is not considered
                if self.latest[var] is not None and self.latest[var] != val:
                    self.changed[var] = True
                    # if "timestamp" not in var and var != 'ts':
                    #    print("***   Changed", var)
                # else:
                #    self.changed[var] = False
                self.latest[var] = val

        # self.previous[var] = val
        self.hist[var].append(val)

    def get_value(self, var_in):
        value_available = "N"
        value = None
        sign = 1
        # print("Var:", var_in)
        var_lookup = var_in
        if var_in[0] == "-":
            sign = -1
            var_lookup = var_in[1:]
        if var_lookup in self.latest:
            value = self.latest[var_lookup]
            if self.changed[var_lookup]:
                value_available = "C"
            else:
                value_available = "Y"
        if value_available == 'N':
            try:
                value = float(var_lookup)
                value_available = 'Y'
            except ValueError:
                "Not a float that mean the key is not present"
                print(var_lookup + " Not present ")
                logging.error(var_lookup + " Not found in the data")
                raise ValueError
                # logging.error(var + " Not present " + str(self.latest) + str(self.var))
                # raise KeyError
        if value is not None:
            value = value * sign
        return value_available, value

    def is_present(self, var):
        if var in self.latest:
            result = True
        else:
            result = False
        return result

    def clear(self):
        # print("Clear Data")
        for k in self.hist:
            self.hist[k].clear()
            self.changed[k] = False
        # for v in self.var:
        #    self.var[v] = None
        # for l in self.latest:
        #    self.latest[l] = None
        # self.all_data_status = False

    def get_value_hist(self, var):
        if type(var) == list:
            var = var[0]
        if var not in self.hist:
            logging.error("Var not present" + var)
            raise KeyError
        return [x for x in self.hist[var] if x is not None]

    def recv_data(self, data):
        """
        This functions will also generate the messages and store them.
        before adding the data to the buffer it takes the timestamp of the message.
            Executes the time based functions
            Generate the time based messages
                Clears the data (controlled by message generation)
            Adds data to the buffer
            Executes field based functions
            Generate field based messages

        put all generated messages in the respective queue
        :param data:
        :return:
        """

        ts_receive = data["ts"]
        self.process_time_functions(ts_receive)
        self.generate_time_messages(ts_receive)
        self.add_values(data)
        self.process_field_functions(data)
        self.generate_field_messages(data)
        # ts = time.time()
        # if ts > self.last_print_time + 60:
        #     print("----   System memory")
        #     print("latest:", sys.getsizeof(self.latest))
        #     print("Hist:", sys.getsizeof(self.hist))
        #     print("Changed:", sys.getsizeof(self.changed))
        #     print("function:", sys.getsizeof(self.functions))
        #     print("Fn Field trig:", sys.getsizeof(self.function_field_trigger))
        #     print("msg_fmt:", sys.getsizeof(self.message_format))
        #     print("Msg_field_trig:", sys.getsizeof(self.message_field_trigger))
        #     print("Message:", sys.getsizeof(self.message))
        #     objgraph.show_most_common_types()
        #     self.last_print_time = ts
        del data


    def add_values(self, data):
        # print("Adding data", data)
        # ts_new = data["timestamp"]
        for d in data:
            self.add_value(d, data[d])
        if len(self.latest) < self.var_count:
            # print("Latest values ", self.latest)
            print("Data length" + str(len(self.latest)) + " Exxpected: " + str(self.var_count))
            logging.info("Data length" + str(len(self.latest)) + " Exxpected: " + str(self.var_count))
            fo = open("../var/log/incomplete_data_" + str(len(self.latest)) + "_" + str(self.var_count) + ".txt", "w")
            for d in self.latest:
                fo.write(d + ":" + str(self.latest[d]) + "\n")
            fo.close()

    def process_function(self, f):
        #if f.fn == "SUM":
        #    print("Processing " + f.var)

        # logging.debug("Processing " + f.var)
        if f.var not in self.changed:
            self.changed[f.var] = False
            self.add_value(f.var, 0)
        if f.fn[:2] == "T_":
            # print("Time Function")
            hist = self.get_value_hist(f.params)
            if len(hist) == 0:
                self.add_value(f.var, None)
            elif f.fn == 'T_SUM':
                self.add_value(f.var, sum(hist))
            elif f.fn == 'T_AVG':
                self.add_value(f.var, sum(hist) / len(hist))
            elif f.fn == 'T_MAX':
                self.add_value(f.var, max(hist))
            elif f.fn == 'T_MIN':
                self.add_value(f.var, min(hist))
            elif f.fn == 'T_MEDIAN':
                self.add_value(f.var, statistics.median(hist))
        else:
            val = []
            chg = []
            for v in f.params:
                flg, value = self.get_value(v)
                # print("Value to process:", v, flg, value)
                if value is not None:
                    val.append(value)
                    chg.append(flg)
                else:
                    print(self.latest)
            if len(val) == 0:
                logging.error("Skipping:" + f.var)
                print("Skip")
                self.add_value(f.var, None)
            elif f.fn in ['SUM', 'TOTAL']:
                # print("Exec SUM", f.var, f.params, val)
                self.add_value(f.var, sum(val))
            elif f.fn == 'PROD':
                # TODO make a generic function
                self.add_value(f.var, val[0] * val[1])
            elif f.fn == 'DIV':
                # print("DIV", f, val)
                if len(val) != 2 or val[1] != 0:
                    self.add_value(f.var, val[0] / val[1])
                else:
                    self.add_value(f.var, 0)
            elif f.fn == 'PF':
                p = math.sqrt(val[0] * val[0] + val[1] * val[1])
                if p == 0:
                    new_value = 0
                else:
                    new_value = val[0] / math.sqrt(val[0] * val[0] + val[1] * val[1])
                if val[0] * val[1] < 0:
                    new_value = new_value * -1
                if new_value == -1:
                    new_value = 1
                self.add_value(f.var, new_value)
            elif f.fn == 'ABS':
                self.add_value(f.var, abs(val[0]))
            elif f.fn == 'ATAN':
                self.add_value(f.var, math.atan(val[0]))
            elif f.fn == 'COS':
                self.add_value(f.var, math.cos(val[0]))
            elif f.fn == 'AVG':
                self.add_value(f.var, sum(val) / len(val))
            elif f.fn == "BIT":
                # print(val)
                if (1 << int(val[1])) & int(val[0]) != 0:
                    new_value = 1
                else:
                    new_value = 0
                self.add_value(f.var, new_value)
            elif f.fn == 'ANY':
                new_value = 0
                for v in val:
                    if v != 0:
                        new_value = 1
                self.add_value(f.var, new_value)
            elif f.fn == 'TRACK':
                # print("Change:", chg)
                if f.var not in self.latest:
                    self.latest[f.var] = 1
                    self.changed[f.var] = True
                    self.hist[f.var] = []
                if "C" in chg:
                    self.incr_value(f.var)
                # print(self.get_value(f.var))
            elif f.fn == 'LT':
                if len(val) != 2:
                    self.add_value(f.var, None)
                else:
                    self.add_value(f.var, val[0] < val[1])
            elif f.fn == 'GT':
                if len(val) != 2:
                    self.add_value(f.var, None)
                else:
                    self.add_value(f.var, val[0] > val[1])
            else:
                logging.error("Do not know how to compute: " + f.fn)
                raise KeyError

    def update_data_status(self):
        if not self.all_data_status:
            if self.var_count > len(self.latest):
                # logging.warning(
                #    "Processing Buffer All Values Not received " + str(len(self.latest)) + " of " + str(self.var_count))
                # print(len(self.latest))
                # logging.WARNING("All Values Not received " + str(len(self.latest)) + " of " + str(self.var_count))
                #if len(self.latest) > self.var_count:
                #    fo = open("../var/all_data.txt", "w")
                #    fo.write(str(self.latest))
                #    fo.close()
                    # time.sleep(1)
                    # print(" *******             all  data ************: ", self.latest)
                return
            else:
                print("Data received " + str(len(self.latest)) + " of " + str(self.var_count))
                if not self.all_data_status:
                    logging.info("Data received " + str(len(self.latest)) + " of " + str(self.var_count))

            logging.debug("Processing Buffer Values received:" + str(len(self.latest)) + " of " + str(self.var_count))

            for l in self.latest:
                if self.latest[l] is not None:
                    self.all_data_status = True
                    return
            logging.warning("All Values are NULL")

    def process_time_functions(self, ts_receive):
        logging.debug("Processing time functions :")
        # print("Processing time functions :")
        # process the functions first and messages second
        self.update_data_status()
        if self.all_data_status:
            for f in self.functions:
                fn = self.functions[f]
                logging.debug("Processing function:" + fn.var + "@" + str(fn.next_trigger_time))
                if fn.trigger_type == 'T':
                    if ts_receive >= fn.next_trigger_time:
                        self.process_function(fn)
                        fn.set_next_function_execution(ts_receive)
                    # else:
                    #     logging.warning("Skipped:" + str(ts_receive) + "  " + str(fn.next_trigger_time))

                    logging.debug("Processed function:" + str(self.latest[fn.var]))
            return True
        else:
            return False

    def process_field_functions(self, data):
        logging.debug("Processing field functions")
        # print("Processing field functions",self.function_field_trigger)
        # process the functions first and messages second
        self.update_data_status()
        if self.all_data_status:
            for field in self.function_field_trigger:
                # print("Processing", field, self.function_field_trigger[field])
                if field in data:
                    for var in self.function_field_trigger[field]:
                        # print("function var:", var, self.functions)
                        self.process_function(self.functions[var])
                # else:
                #      print("Not present in current data", field)
            return True
        else:
            return False

    def add_message(self, message_name, message):
        self.message.append(MessageData(message_name, self.message_format[message_name].topic, message, "send"))

    def get_message(self):
        if len(self.message) == 0:
            return None
        return self.message.popleft()

    def generate_message_json(self, message_name):
        message_format = self.message_format[message_name]
        # print(self.message_format, message_name, message_format, self.all_data_status)
        if self.all_data_status:
            data_sel = dict()
            # if message_format.fields == ["ALL"]:
            #    data = {**self.latest, **self.var}
            #    return json.dumps(data)
            # print(self.message_format, message_format.fields, self.all_data_status)
            for f in message_format.fields:
                # print(f)
                #if message_format.fields[f] == "N":
                #    continue
                try:
                    flg, value = self.get_value(f)
                except ValueError:
                    print("Value error for ", f)
                    return None
                # print(flg, value, message_format.fields[f])
                #if message_format.fields[f] == 'Y' and flg in ['Y', 'C']:
                data_sel[f] = value
                #if message_format.fields[f] == 'C' and flg == 'C':
                #    data_sel[f] = value
            return json.dumps(data_sel)
        return None

    def generate_message_string(self, message_name):
        message_format = self.message_format[message_name]

        if self.all_data_status:
            try:
                data_list = []
                if message_format.fields == ["ALL"]:
                    raise KeyError
                    # fields = sorted(self.latest.keys()) + sorted(self.var.keys())
                else:
                    fields = message_format.fields
                for f in fields:
                    flg, value = self.get_value(f)
                    data_list.append(str(value))
                return ",".join(data_list)
            except ValueError:
                print("Skip message sending as all data is not available")
        return None

    def generate_time_messages(self, ts_generate):
        # process the functions first and messages second
        # print("Generating time messages")
        # print("added")
        # logging.debug("Generating time messages")
        self.update_data_status()
        # time.sleep(.1)
        # print("status for event msg generating", self.all_data_status)
        if self.all_data_status:
            # print("A")
            clear_data = False
            for message_name in self.message_format:
                # print(message_name)
                if self.message_format[message_name].trigger_type == 'T':
                    # add execution timestamp
                    if self.message_format[message_name].next_trigger_time == 0:
                        self.message_format[message_name].set_next_message_execution(ts_generate)
                        continue
                    timestamp = time.strftime('%Y-%m-%d %H:%M:%S',
                                              time.localtime(self.message_format[message_name].next_trigger_time))
                    self.add_value("timestamp", timestamp)
                    # print(ts_generate, self.message_format[message_name].next_trigger_time)
                    if ts_generate >= self.message_format[message_name].next_trigger_time:
                        #f_log = open("../var/log/msg_time.txt", 'a')
                        #f_log.write(timestamp + "\n")
                        #f_log.close()
                        # print("message:", message_name, self.message_format[message_name].fmt, "at ", timestamp)
                        # self.add_value("timestamp", self.message_format[message_name].next_trigger_time)
                        if self.message_format[message_name].fmt == 'Q':
                            # print("get os params")
                            self.add_value("iot_cpu_percent",psutil.cpu_percent())
                            # print("A")
                            self.add_value("iot_mem_percent",psutil.virtual_memory().percent)
                            self.add_value("iot_root_free", psutil.disk_usage("/").free)
                            # print("B")
                            ps_temp = psutil.sensors_temperatures()
                            if "cpu-thermal" in ps_temp: 
                                self.add_value("iot_cpu_temp", ps_temp['cpu-thermal'][0].current)
                            else:
                                self.add_value("iot_cpu_temp", 0)
                            ps_io = psutil.disk_io_counters()
                            self.add_value("iot_write_count", ps_io.write_count)
                            self.add_value("iot_write_bytes", ps_io.write_bytes)
                            self.add_value("iot_write_merged_count", ps_io.write_merged_count)
                            # print("GG")
                            # print("C")
                            stat = os.popen("sudo mmc extcsd read  /dev/mmcblk0 | grep LIFE").read()
                            # s_data = stat.split("\n")
                            # self.add_value("iot_emmc_health_a", s_data[0].split(":")[1])
                            # self.add_value("iot_emmc_health_b", s_data[1].split(":")[1])
                            # print("D")
                            self.add_value("iot_emmc_health_a",0)
                            self.add_value("iot_emmc_health_b",0)
                            message = self.generate_message_json(message_name)
                            # print(" &&& J message ", message)
                            if self.message is not None:
                                self.message.append(MessageData(message_name, self.message_format[message_name].topic,
                                                                message, "send"))
                            self.message_format[message_name].set_next_message_execution(ts_generate)
                        elif self.message_format[message_name].fmt == 'U':
                            message = self.generate_message_string(message_name)
                            # print(" &&& S message ", message)
                            if self.message is not None:
                                self.message.append(MessageData(message_name, None, message, "send"))
                            self.message_format[message_name].set_next_message_execution(ts_generate)

                        if self.message_format[message_name].clear == 'Y':
                            clear_data = True
            if clear_data:
                self.clear()
            return True
        else:
            return False

    def generate_field_messages(self, data):
        logging.debug("Generating field messages")
        # process the functions first and messages second
        self.update_data_status()
        # print("status for msg generating", self.all_data_status, self.message_field_trigger)
        if self.all_data_status:
            for field in self.message_field_trigger:
                # print("Message field ", field, data)
                if field in data:
                    for message_name in self.message_field_trigger[field]:
                        # print("Generating", message_name)
                        if self.message_format[message_name].fmt == 'Q':
                            message = self.generate_message_json(message_name)
                            if self.message is not None:
                                self.message.append(MessageData(message_name, self.message_format[message_name].topic,
                                                                message, "send"))
                        elif self.message_format[message_name].fmt == 'U':
                            message = self.generate_message_string(message_name)
                            if self.message is not None:
                                self.message.append(MessageData(message_name, None, message, "send"))
            return True
        else:
            return False


if __name__ == '__main__':
    print("Compiling")
    buff = ProcessingBuffer("Test", 5)
    values_to_add = {"V1": 220, "V2": 230, "V3": 240, "C": 2, "ts": time.time()}
    print(values_to_add)
    buff.add_values(values_to_add)
    buff.add_message_params("j_1", "V1,V2", "J", "topic", "T", 60, 'Y')
    print(buff.message_format)
    ts = time.time()
    print("attempting at", ts)
    buff.generate_time_messages(ts)
    print("Message 1", buff.message)
    print("attempting at", ts + 120)
    buff.generate_time_messages(ts + 120)
    print("Message 2", buff.message)
    print(buff.latest)

    # TODO testing
    # functions have correct number of parameters
    # functions have valid parameters
    # messages have corect parameters
