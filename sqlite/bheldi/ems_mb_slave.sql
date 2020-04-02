BEGIN;
INSERT INTO ems_mb_slave(slave, zmq_command_port, process, query_interval)
VALUES ('Bheldi_comm', 0, 'Bheldi', 0.1);
COMMIT;
