BEGIN;

INSERT INTO ems_mb_device(device, section, query) 
VALUES ('Ags',	'ContexDeviceInfosection',	'BheldiQ50');

Inverter_1	ParsaInverterBlock	ParsaQ1
Inverter_2	ParsaInverterBlock	ParsaQ1
Inverter_3	ParsaInverterBlock	ParsaQ2
Inverter_4	ParsaInverterBlock	ParsaQ2
Inverter_5	ParsaInverterBlock	ParsaQ3
Inverter_6	ParsaInverterBlock	ParsaQ3
Inverter_7	ParsaInverterBlock	ParsaQ4
Battery	ParsaBatteryBlock	ParsaQ4
Load_Meter	ParsaMeterBlock	ParsaQ5
DG_Meter	ParsaMeterBlock	ParsaQ5
BIO_Meter	ParsaMeterBlock	ParsaQ5
PLC	ParsaPlcBlock	ParsaQ5


COMMIT;