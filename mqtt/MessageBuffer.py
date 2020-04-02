from collections import namedtuple
import MqttClient
import queue
import json
import logging
import time
import DataDb
import DbMessages
import OnlineMessages
Message = namedtuple("Message", "id topic msg")


class MessageBuffer:
    def __init__(self, db_name, commit_freeq):
        self.datadb = DataDb.DataDb("../var/data_{name}.sqlite3".format(name=db_name))
        self.online_messages = OnlineMessages.OnlineMessages(self.datadb)
        self.db_messages = DbMessages.DbMessages(self.datadb, 10)
        # start in offline and recovery mode
        self.recovery = True
        self.commit_freeq = commit_freeq
        self.last_commit = time.time()
        self.last_sent = time.time()
        self.message_sent = 0
        print("MQTT Buffer created", self.last_commit)

    def clean(self):
        self.datadb.clean()
        self.datadb.commit()

    def add_message(self, topic, message):
        # Always add to the end of online queue
        self.online_messages.add_message(topic, message)

    def get_next_messages(self):
        if self.recovery:
            next_msg = self.db_messages.get_next_message()
            # print("Got Msg:", time.time())
            if next_msg is not None:
                # there were some message in the db so recover them
                return next_msg
            else:
                self.recovery = False
                # No return just get online message
        if not self.recovery:
            return self.online_messages.get_next_message()

    def update_state(self, message_id, status):
        if self.recovery:
            self.db_messages.update_state(message_id, status)
        else:
            self.online_messages.update_state(message_id, status)
        if not status:
            self.recovery = True
        self.process_messages()

    def process_messages(self):
        ts = time.time()
        if self.last_commit + self.commit_freeq < ts:   
            self.db_messages.save_messages()
            self.online_messages.save_messages()
            # print("Commit", ts, time.time())
            self.datadb.commit()
            self.last_commit = ts


if __name__ == '__main__':
    print("Test")