BEGIN;

CREATE TABLE edge_process(
	process Text PRIMARY KEY,
	zmq_process_port Integer,
	data_size Integer );
COMMIT;
