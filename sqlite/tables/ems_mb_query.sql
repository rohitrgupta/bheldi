CREATE TABLE ems_mb_query(
	query Text NOT NULL PRIMARY KEY,
	slave Text NOT NULL,
	unit Integer NOT NULL,
	start_address Integer NOT NULL,
	length Integer,
	CONSTRAINT ems_mb_query_ems_mb_slave_NO ACTION_NO ACTION_query_slave_0 FOREIGN KEY ( query ) REFERENCES ems_mb_slave( slave )
 );