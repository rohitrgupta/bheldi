BEGIN;
INSERT INTO ems_mb_slave(slave, zmq_command_port, modbus_address, modbus_port, process, query_interval)
VALUES ('Parsa_plc', 0, '192.168.100.100', 502, 'Parsa', 0.5);
COMMIT;
