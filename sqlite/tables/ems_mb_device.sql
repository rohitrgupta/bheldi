CREATE TABLE ems_mb_device(
	device Text NOT NULL,
	section Text NOT NULL,
	query Text NOT NULL,
	CONSTRAINT ems_mb_device_ems_mb_query_NO ACTION_NO ACTION_query__1 FOREIGN KEY ( query ) REFERENCES ems_mb_query
		DEFERRABLE INITIALLY DEFERRED,
	CONSTRAINT ems_mb_device_ems_mb_section_NO ACTION_NO ACTION_section_section_1 FOREIGN KEY ( section ) REFERENCES ems_mb_section( section )
		DEFERRABLE INITIALLY DEFERRED
,
PRIMARY KEY ( device, query ) );