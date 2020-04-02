BEGIN;

CREATE TABLE edge_msg_field(
	msg Text,
	seq Integer,
	field Text,
	send Text,
	CONSTRAINT "edge_msg_field_edge_msg_NO ACTION_NO ACTION_msg_msg_0" FOREIGN KEY ( msg ) REFERENCES edge_msg( msg )
 );
-- -------------------------------------------------------------

COMMIT;