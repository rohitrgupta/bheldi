BEGIN;

INSERT INTO ems_mb_slave(slave, zmq_command_port, modbus_address, modbus_port, process, query_interval)
    VALUES ('Bheldi_comm', 0, 'localhost', 11502, 'Bheldi', 0.1);
--    VALUES ('Bheldi_comm', 0, '192.168.1.10', 502, 'Bheldi', 0.1);

COMMIT;