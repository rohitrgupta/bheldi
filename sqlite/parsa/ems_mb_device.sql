BEGIN;
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Inverter_1', 'ParsaInverterBlock', 'ParsaQ1');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Inverter_2', 'ParsaInverterBlock', 'ParsaQ1');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Inverter_3', 'ParsaInverterBlock', 'ParsaQ2');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Inverter_4', 'ParsaInverterBlock', 'ParsaQ2');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Inverter_5', 'ParsaInverterBlock', 'ParsaQ3');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Inverter_6', 'ParsaInverterBlock', 'ParsaQ3');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Inverter_7', 'ParsaInverterBlock', 'ParsaQ4');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Battery', 'ParsaBatteryBlock', 'ParsaQ4');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('Load_Meter', 'ParsaMeterBlock', 'ParsaQ5');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('DG_Meter', 'ParsaMeterBlock', 'ParsaQ5');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('BIO_Meter', 'ParsaMeterBlock', 'ParsaQ5');
INSERT INTO ems_mb_device(device, section, query)
VALUES ('PLC', 'ParsaPlcBlock', 'ParsaQ5');
COMMIT;
