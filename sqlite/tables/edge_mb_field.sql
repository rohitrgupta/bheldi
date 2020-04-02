BEGIN;

CREATE TABLE edge_mb_field(
	field Text NOT NULL,
	block Text NOT NULL,
	seq Integer NOT NULL,
	fmt Text NOT NULL,
	unit Text,
	access Text NOT NULL,
	scale Real NOT NULL,
	offset Real NOT NULL,
	encoding Text NOT NULL,
    FOREIGN KEY ( block ) REFERENCES edge_mb_section( block )
		DEFERRABLE INITIALLY DEFERRED
 );

COMMIT;