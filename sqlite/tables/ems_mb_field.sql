CREATE TABLE ems_mb_field(
	field Text NOT NULL,
	section Text NOT NULL,
	seq Integer NOT NULL,
	fmt Text NOT NULL,
	unit Text,
	access Text NOT NULL,
	scale Real NOT NULL,
	offset Real NOT NULL,
	encoding Text NOT NULL,
	CONSTRAINT ems_mb_field_ems_mb_section_NO ACTION_NO ACTION_section_section_1 FOREIGN KEY ( section ) REFERENCES ems_mb_section( section )
		DEFERRABLE INITIALLY DEFERRED
 );