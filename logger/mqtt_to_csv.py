import paho.mqtt.client as mqtt
import json
import time
import datetime


DEBUG_FIELDS = ["timestamp", "Inv_Pac", "Inv_Qac", "Grid_KT", "Grid_KA"]


def on_message(client, userdata, msg):
    data = json.loads(msg.payload)
    print("Received", msg.topic, "at", datetime.datetime.now(), "For ts", data["timestamp"])

    if msg.topic == "/Renew/control":
        userdata["rows"] = 60
        userdata["file_id"] += 1
        userdata["debug_header"] = True

    if userdata["rows"] != 0 and msg.topic == "/Renew/ALL":
        fname = "test_data_" + str(userdata["file_id"]) + ".csv"
        fd = open(fname, 'a')
        print("Writing to ", fname, userdata["rows"])
        if userdata["debug_header"]:
            h = ",".join(DEBUG_FIELDS)
            fd.write(h + "\n")
            userdata["debug_header"] = False
        content = []
        for f in DEBUG_FIELDS:
            content.append(str(data[f]))
        c = ",".join(content)
        fd.write(c + "\n")
        fd.close()
        userdata["rows"] -= 1

    fields = sorted(data.keys())
    fo = open(userdata["file"] + ".csv", 'a')
    if userdata["header"]:
        h = ",".join(fields)
        fo.write(h + "\n")
        userdata["header"] = False
    content = []
    for f in fields:
        if type(data[f]) == list:
            content.append(";".join([str(x) for x in data[f]]))
        else:
            content.append(str(data[f]))
    c = ",".join(content)
    fo.write(c + "\n")
    fo.close()
    #fo = open("Json_" + userdata["file"] + ".txt", 'a')
    # print("write", msg.payload)
    #fo.write(msg.topic)
    #fo.write("\n")
    #fo.write(msg.payload.decode())
    #fo.write("\n")
    #fo.close()
    print("Done")


def run_processes(args):
    print("**", args[0])
    client_id = "mqtt_to_csv_" +  args[0]
    params = {"header": True, "file": args[0], "file_id": 1, "rows": 60, "debug_header": True}
    client = mqtt.Client(client_id, userdata=params, protocol=mqtt.MQTTv311, clean_session=True)
    client.on_message = on_message
    Connected = False
    while Connected != True:
        try:
            client.connect('localhost', 1883, 600)
            Connected = True
        except IOError:
            print("Could not Connect", IOError)
    print(client_id,  "Subscribing to:", "/" + args[0] + "/#")
    client.subscribe("/" + args[0] + "/#", qos=0)

    client.loop_start()
    print("Process Started")
    valid = False
    while (valid == False):
        # print("press enter to exit.")
        # userInput = input(">>> ")
        # valid = True
        time.sleep(1)
    client.loop_stop(force=False)


def main(args):
    run_processes(args)


if __name__ == '__main__':
    import sys
    main(sys.argv[1:])
