BEGIN;

CREATE TABLE edge_mb_query(
	query Text NOT NULL PRIMARY KEY,
	slave Text NOT NULL,
	unit Integer NOT NULL,
	start_address Integer NOT NULL,
	length Integer,
	FOREIGN KEY ( query ) REFERENCES edge_mb_slave( slave )
 );


COMMIT;