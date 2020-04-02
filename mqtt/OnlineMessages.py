import MqttClient
import queue
import logging
import time
import DataDb


class OnlineMessages:
    """ Every message should come through the online message buffer
        if will be in two mode online and offline
        it will change the mode based on the status of the last message
        if online it will only save the sent messages
        if offline it will save all the messages to the database
        will give only one message at a time,
    """
    def __init__(self, data_db):
        self.db = data_db
        self.messages_to_send = queue.Queue()
        self.messages_sent = queue.Queue()
        self.message_being_sent = False
        self.message_id = self.db.get_last_message_id() + 1
        self.online = False
        self.last_sent_id = 0
        logging.info("Online Buffer initialized, ID =" + str(self.message_id))

    def add_message(self, topic, message):
        msg = message[:-1] + ', "id":{}'.format(self.message_id) + '}'
        # print("Adding message:", msg[-50:])
        self.messages_to_send.put(DataDb.Message(self.message_id, topic, msg))
        self.message_id += 1

    def get_next_message(self):
        # do not allow to get online message if offline message is present
        if not self.online:
            rec = self.db.load_unsent_data(1, self.last_sent_id)
            if rec is not None:
                print("Unsent data present", rec)
                raise ValueError

        if self.messages_to_send.qsize() == 0:
            return None
        if self.message_being_sent:
            raise ValueError
        self.message_being_sent = True
        return self.messages_to_send.queue[0]

    def update_state(self, message, sent):
        if self.messages_to_send.queue[0].id != message.id:
            print ("Message out of sequence", self.messages_to_send.queue[0].id, message.id)
            raise KeyError
        if sent:
            self.last_sent_id = message.id
            self.messages_sent.put(self.messages_to_send.get())
            self.online = True
        else:
            self.online = False
        self.message_being_sent = False

    def close(self):
        self.message_being_sent = False
        self.online = False
        self.save_messages()

    def clean(self):
        self.db.clean()
        self.db.commit()

    def save_messages(self):
        # just adding a message in offline state will keep the buffer in offline state
        # Therefore add, get and update should be performed before save message
        if self.message_being_sent:
            raise ValueError

        print("MQTT Save online:", self.online, "Sent:", self.messages_sent.qsize(), "Not Sent:", self.messages_to_send.qsize())
        # print("Save Sent Message", self.messages_sent.qsize())
        for i in range(self.messages_sent.qsize()):
            self.db.save_data(self.messages_sent.queue[i], 'S')

        if not self.online:
            # print("Save Unsent Message", self.messages_to_send.qsize())
            for i in range(self.messages_to_send.qsize()):
                self.db.save_data(self.messages_to_send.queue[i], 'F')
        # empty the queue
        while self.messages_sent.qsize():
            x = self.messages_sent.get()
        if not self.online:
            while self.messages_to_send.qsize():
                x = self.messages_to_send.get()
        self.db.commit()


if __name__ == '__main__':
    db = DataDb.DataDb("temp.sqlite")
    m = OnlineMessages(db)
    m.add_message('A', 'm1')
    m.add_message('A', 'm2')
    msg = m.get_next_message()
    m.update_state(msg.id, False)
    print(msg)
    msg = m.get_next_message()
    m.update_state(msg.id, True)
    msg = m.get_next_message()
    print(msg)
    print("size before save", m.messages_sent.qsize())
    m.save_messages()
    print("size after save", m.messages_sent.qsize())
