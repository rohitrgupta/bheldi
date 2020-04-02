import dbfn
import argparse


def print_query(slave):
    db = dbfn.Db("../edge.sqlite3")
    q_sel = "SELECT query, unit, start_address, length FROM ems_mb_query where slave = ?"
    query_data = db.get_recs(q_sel, (slave,))
    db.close()
    for k in query_data:
        print("    Query:", k[0], "Uint:", k[1], "Address:", k[2],"to", k[2] + k[3] -1)
        print_device(k[0])


def print_device(query):
    db = dbfn.Db("../edge.sqlite3")
    q_sel = "SELECT section, device FROM ems_mb_device where query = ?"
    query_data = db.get_recs(q_sel, (query,))
    db.close()
    for k in query_data:
        print("        Device:", k[0], k[1])


def print_slaves():
    db = dbfn.Db("../edge.sqlite3")
    q_sel = "SELECT slave, modbus_address, modbus_port  FROM ems_mb_slave"
    slave_data = db.get_recs(q_sel)
    db.close()
    for k in slave_data:
        print("Slaves:", k[0], "@", k[1], ":", k[2])
        print_query(k[0])


def print_messages():
    db = dbfn.Db("../edge.sqlite3")
    q_sel = "SELECT msg, message_type, server_address, server_port, event_on FROM ems_msg"
    slave_data = db.get_recs(q_sel)
    db.close()
    for k in slave_data:
        print("Message " + k[1] + ":", k[0], "@", k[2], ":", k[3],  "~", k[4])
        print_query(k[0])


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("-s", "--slaves", action='store_true',
                        help="Print slaves")
    parser.add_argument("-m", "--messages", action='store_true',
                        help="print messages info")
    parser.add_argument("-s", "--slaves", action='store_true',
                        help="Print slaves")
    args = parser.parse_args()
    if args.slaves:
        print_slaves()
    if args.messages:
        print_messages()

