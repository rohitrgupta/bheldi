CREATE TABLE ems_mb_slave(
	slave Text,
	zmq_command_port Integer,
	process Text,
	query_interval Real,
	CONSTRAINT ems_mb_slave_ems_process_NO ACTION_NO ACTION_process_process_0 FOREIGN KEY ( process ) REFERENCES ems_process( process )
 );