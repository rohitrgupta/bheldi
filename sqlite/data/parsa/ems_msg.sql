BEGIN;

-- INSERT INTO ems_msg(msg, message_type, topic, server_address, server_port, event_type, event_on, flg_clear, zmq_msg_port, process)
--    VALUES ('Bheldi_mqtt', 'Q', '/Bheldi/ALL', 'localhost', 1883, 'T', '10', 'N', 6103, 'Bheldi');

 INSERT INTO ems_msg(msg, message_type, topic, server_address, server_port, event_type, event_on, flg_clear, zmq_msg_port, process)
    VALUES ('Bheldi_udp', 'U', 'Bheldi', 'localhost', 8102, 'T', '10', 'N', 6104, 'Bheldi');

-- INSERT INTO ems_msg(msg, message_type, topic, server_address, server_port, event_type, event_on, flg_clear, zmq_msg_port, process)
--     VALUES ('Bheldi_debug', 'U', 'Debug', 'localhost', 9999, 'T', '10', 'N', 6105, 'Bheldi');

COMMIT;