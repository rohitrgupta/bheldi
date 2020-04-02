BEGIN;
INSERT INTO ems_msg(msg, message_type, topic, server_address, server_port, event_type, event_on, flg_clear, zmq_msg_port, process)
VALUES ('Parsa_udp', 'U', 'Parsa', 'taraurja.in', 8102, 'T', '60', 'N', 6104, 'Parsa');
INSERT INTO ems_msg(msg, message_type, topic, server_address, server_port, event_type, event_on, flg_clear, zmq_msg_port, process)
VALUES ('Parsa_debug', 'U', 'Debug', 'localhost', 9999, 'T', '600', 'N', 6105, 'Parsa');
INSERT INTO ems_msg(msg, message_type, topic, server_address, server_port, event_type, event_on, flg_clear, zmq_msg_port, process)
VALUES ('Parsa_mqtt', 'Q', '/Parsa/ALL', '13.235.101.255', 1883, 'T', '60', 'Y', 6103, 'Parsa');
COMMIT;
