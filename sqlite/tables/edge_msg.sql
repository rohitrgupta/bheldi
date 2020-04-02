BEGIN;

CREATE TABLE edge_msg(
	msg Text NOT NULL PRIMARY KEY,
	message_type Text NOT NULL,
	topic Text NOT NULL,
	server_address Text NOT NULL,
	server_port Integer NOT NULL,
	event_type Text NOT NULL,
	event_on Text NOT NULL,
	flg_clear Text NOT NULL,
	zmq_msg_port Integer,
	process Text,
	FOREIGN KEY ( process ) REFERENCES edge_process( process )
 );

COMMIT;