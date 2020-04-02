BEGIN;

CREATE TABLE edge_mb_slave(
	slave Text,
	zmq_command_port Integer,
	modbus_address Text,
	modbus_port Integer,
	process Text,
	query_interval Real,
	FOREIGN KEY ( process ) REFERENCES edge_process( process )
 );

COMMIT;