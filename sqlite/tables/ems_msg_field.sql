CREATE TABLE ems_msg_field(
	msg Text,
	seq Integer,
	field Text,
	send Text,
	CONSTRAINT ems_msg_field_ems_msg_NO ACTION_NO ACTION_msg_msg_0 FOREIGN KEY ( msg ) REFERENCES ems_msg( msg )
 );
