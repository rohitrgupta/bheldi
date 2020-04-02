CREATE TABLE ems_process_function(
	id Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	var Text NOT NULL,
	operation Text NOT NULL,
	parameters Text NOT NULL,
	process Text NOT NULL,
	trigger Text NOT NULL,
	trigger_field Text NOT NULL );