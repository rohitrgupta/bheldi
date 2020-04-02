BEGIN;
INSERT INTO ems_msg(msg, message_type, topic, event_type, event_on, flg_clear, zmq_msg_port, process)
VALUES ('Bheldi_udp', 'U', 'Bheldi', 'T', '60', 'N', 6105, 'Bheldi');
COMMIT;
