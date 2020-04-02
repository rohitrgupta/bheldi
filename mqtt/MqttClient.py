import paho.mqtt.publish
import paho.mqtt.client
import logging
import time
import json


class MqttClient:
    def __init__(self, config):
        self.config = config
        self.client_id = 'pi@' + self.config.msg
        self.connected = False
        self.mqtt_client = None
        logging.info("Created MQTT client: " + self.config.msg)

    def connect(self):
        if not self.connected:
            logging.info("Connecting to MQTT Server" )
            self.mqtt_client = paho.mqtt.client.Client(self.client_id, userdata=self,
                                                       protocol=paho.mqtt.client.MQTTv311, clean_session=False)
            try:
                self.mqtt_client.connect(self.config.server_address, self.config.server_port, 60)
            except Exception as e:
                logging.error("Could not connect to MQTT Server " + self.config.server_address + ":" +
                              str(self.config.server_port))
                return self.connected
            self.mqtt_client.loop_start()
            self.connected = True
            logging.info("Connected")
        return self.connected

    def publish(self, topic, data):
        # self.save_meggage(data)
        if self.connect():
            ts = time.localtime()
            #name = "../var/MQTT_{site}_{topic}_{yyyy}-{mm}-{dd}.csv"
            #f_name = name.format(site=self.config['site'], topic=topic.replace("/", "_"),
            #                     yyyy=ts.tm_year, mm=ts.tm_mon, dd=ts.tm_mday)
            #fo = open(f_name, "a")
            #fo.write(data + "\n")
            #fo.close()
            result = -1
            try:
                ts = time.time()
                (result, message_id) = self.mqtt_client.publish(topic, payload=data, qos=0, retain=True)
                # print("Mqtt Message Send:",message_id, ts, time.time())
            except TimeoutError:
                logging.error("Timeout Error")
                self.connected = False
                time.sleep(1)
                return False
            except Exception as e:
                print("Error", e)
                logging.debug("MQTT error")

            logging.debug("send result MQTT client " + str(result))
            if result != 0:
                logging.error("MQTT send failed " + str(result))
                self.connected = False
                time.sleep(30)
                return False
            time.sleep(1)
            return True
        else:
            time.sleep(1)
            return False


# if __name__ == '__main__':
    # mq = MqttClient("Test", "test_mqtt")
    # mq.publish("abcd")
