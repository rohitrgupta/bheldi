BEGIN;
INSERT INTO ems_mb_query(query, slave, unit, start_address, length)
VALUES ('ParsaQ1', 'Parsa_plc', 1, 0, 108);
INSERT INTO ems_mb_query(query, slave, unit, start_address, length)
VALUES ('ParsaQ2', 'Parsa_plc', 1, 108, 108);
INSERT INTO ems_mb_query(query, slave, unit, start_address, length)
VALUES ('ParsaQ3', 'Parsa_plc', 1, 216, 108);
INSERT INTO ems_mb_query(query, slave, unit, start_address, length)
VALUES ('ParsaQ4', 'Parsa_plc', 1, 324, 78);
INSERT INTO ems_mb_query(query, slave, unit, start_address, length)
VALUES ('ParsaQ5', 'Parsa_plc', 1, 402, 92);
COMMIT;
