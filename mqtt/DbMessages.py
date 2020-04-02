import MqttClient
import queue
import logging
import time
import DataDb


class DbMessages:
    def __init__(self, data_db, batch_size):
        self.db = data_db
        self.messages_to_send = queue.Queue()
        self.messages_sent = queue.Queue()
        self.message_being_sent = False
        self.online = False
        self.batch_size = batch_size
        self.last_sent_id = 0

    def load_messages(self):
        # self.messages_to_send.put(Message(self.message_id, topic, message))
        # self.message_id += 1
        # rec will hold id, topic, msg
        rec = self.db.load_unsent_data(self.batch_size, self.last_sent_id)
        if rec is not None:
            self.last_sent_id = rec[0][0] - 1
            for r in rec:
                self.messages_to_send.put(DataDb.Message(r[0], r[1], r[2]))

    def get_next_message(self):
        if self.messages_to_send.qsize() == 0:
            logging.info("Sending queue empty, Flush and Load data")
            self.save_messages()
            self.load_messages()
        if self.messages_to_send.qsize() == 0:
            self.online = True
            return None
        if self.message_being_sent:
            raise ValueError
        self.message_being_sent = True
        return self.messages_to_send.queue[0]

    def update_state(self, message, sent):

        if self.messages_to_send.queue[0].id != message.id:
            raise KeyError
        if sent:
            self.messages_sent.put(self.messages_to_send.get())
        self.message_being_sent = False
        # print("Q size after update:" + str(self.messages_to_send.qsize()))

    def save_messages(self):
        # update only sent messages
        ts = time.time()
        for i in range(self.messages_sent.qsize()):
            self.db.update_data(self.messages_sent.queue[i])
        # empty the sent queue
        while self.messages_sent.qsize():
            self.messages_sent.get()
        self.db.commit()
        # print("Save msg time", ts, time.time())

    def close(self):
        self.save_messages()

if __name__ == '__main__':
    print("Check")
