BEGIN;

CREATE TABLE edge_function(
	process Text NOT NULL,
	code Text NOT NULL,
	event_type Text NOT NULL,
	event_on Text NOT NULL ,
	FOREIGN KEY ( "process" ) REFERENCES "edge_process"( "process" ));

COMMIT;
