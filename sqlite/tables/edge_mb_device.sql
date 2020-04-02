BEGIN;

CREATE TABLE edge_mb_device(
	device Text NOT NULL,
	block Text NOT NULL,
	query Text NOT NULL,
	FOREIGN KEY ( query ) REFERENCES edge_mb_query( query )
		DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY ( block ) REFERENCES edge_mb_block( block )
		DEFERRABLE INITIALLY DEFERRED
 );

COMMIT;
