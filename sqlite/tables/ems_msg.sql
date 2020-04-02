CREATE TABLE ems_msg(
	msg Text NOT NULL PRIMARY KEY,
	message_type Text NOT NULL,
	topic Text NOT NULL,
	event_type Text NOT NULL,
	event_on Text NOT NULL,
	flg_clear Text NOT NULL,
	zmq_msg_port Integer,
	process Text,
	CONSTRAINT ems_msg_ems_process_NO ACTION_NO ACTION_process_process_0 FOREIGN KEY ( process ) REFERENCES ems_process( process )
 );