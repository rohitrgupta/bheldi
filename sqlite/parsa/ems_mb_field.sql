BEGIN;
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rWorking_Mode', 'ParsaInverterBlock', 1, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rGrid_Vtg_R', 'ParsaInverterBlock', 2, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rGrid_freq', 'ParsaInverterBlock', 3, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_OP_Vtg_R', 'ParsaInverterBlock', 4, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_OP_Pwr_R', 'ParsaInverterBlock', 5, 'int32', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_OP_R_freq', 'ParsaInverterBlock', 6, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_OP_Current_R', 'ParsaInverterBlock', 7, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_OP_load_Percent', 'ParsaInverterBlock', 8, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBUS_Vtg', 'ParsaInverterBlock', 9, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rP_Batt_Vtg', 'ParsaInverterBlock', 10, 'uint16', None, 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Capacity', 'ParsaInverterBlock', 11, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rCharging_Curr', 'ParsaInverterBlock', 12, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rPV1_Input_Vtg', 'ParsaInverterBlock', 13, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMax_Temp_Detect_pointers', 'ParsaInverterBlock', 14, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rPV_IP_Curr', 'ParsaInverterBlock', 15, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Vtg_From_SCC', 'ParsaInverterBlock', 16, 'uint16', None, 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Discharge_Curr', 'ParsaInverterBlock', 17, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rStatus', 'ParsaInverterBlock', 18, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Vtg_Ofset_Fan', 'ParsaInverterBlock', 19, 'uint16', None, 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rEeprom_version', 'ParsaInverterBlock', 20, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rPV_Char_Pwr', 'ParsaInverterBlock', 21, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_OP_Vtg', 'ParsaInverterBlock', 22, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_OP_Freq', 'ParsaInverterBlock', 23, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMax_AC_Char_Curr', 'ParsaInverterBlock', 24, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Under_Vtg', 'ParsaInverterBlock', 25, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rChar_Float_Vtg', 'ParsaInverterBlock', 26, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rChar_Bulk_Vtg', 'ParsaInverterBlock', 27, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Default_Re_Char_Vtg', 'ParsaInverterBlock', 28, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMax_Char_Curr', 'ParsaInverterBlock', 29, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAC_IP_Vtg_Range', 'ParsaInverterBlock', 30, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rOutput_Source_Priority', 'ParsaInverterBlock', 31, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rChar_Source_Priority', 'ParsaInverterBlock', 32, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Type', 'ParsaInverterBlock', 33, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rPV_Pwr_Balance', 'ParsaInverterBlock', 34, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rOutput_Mode', 'ParsaInverterBlock', 35, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Re_Charge_Vtg', 'ParsaInverterBlock', 36, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rPV_OK_Condition_For_Parallel', 'ParsaInverterBlock', 37, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBattery_voltage1', 'ParsaInverterBlock', 38, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBattery_charging_current1', 'ParsaInverterBlock', 39, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBattery_capacity1', 'ParsaInverterBlock', 40, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBattery_discharge_current1', 'ParsaInverterBlock', 41, 'int32', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rRead_Max_Flt_Charge_Vtg', 'ParsaInverterBlock', 42, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rRead_Max_Charge_Curr', 'ParsaInverterBlock', 43, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rRead_ACMax_Charge_Curr', 'ParsaInverterBlock', 44, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Under_Vtg_wr', 'ParsaInverterBlock', 45, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Type_wr', 'ParsaInverterBlock', 46, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Re_Charge_Vtg', 'ParsaInverterBlock', 47, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBatt_Re_Discharge_Vtg', 'ParsaInverterBlock', 48, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rReadBulk_charge_Vtg', 'ParsaInverterBlock', 49, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('ARR_DATA_1', 'ParsaInverterBlock', 50, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('ARR_DATA_2', 'ParsaInverterBlock', 51, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('ARR_DATA_3', 'ParsaInverterBlock', 52, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rBattery_Capacity', 'ParsaBatteryBlock', 1, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rNominal_Voltage', 'ParsaBatteryBlock', 2, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMaximum_current', 'ParsaBatteryBlock', 3, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('wTimeStamp', 'ParsaBatteryBlock', 4, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rCapacity_of_Battery', 'ParsaBatteryBlock', 5, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rSOC', 'ParsaBatteryBlock', 6, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rSOH', 'ParsaBatteryBlock', 7, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rCurrent', 'ParsaBatteryBlock', 8, 'int16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rVoltage', 'ParsaBatteryBlock', 9, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMax_Charge_Current', 'ParsaBatteryBlock', 10, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMax_Discharge_Current', 'ParsaBatteryBlock', 11, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rCharge_Voltage_Limit', 'ParsaBatteryBlock', 12, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rDischarge_Voltage_Limit', 'ParsaBatteryBlock', 13, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMax_Charge_Power', 'ParsaBatteryBlock', 14, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rMax_Discharge_Power', 'ParsaBatteryBlock', 15, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rAverage_Temperature', 'ParsaBatteryBlock', 16, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('wStorage_block_Status_flags', 'ParsaBatteryBlock', 17, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('wBattery_Status_Flags', 'ParsaBatteryBlock', 18, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rThroughput', 'ParsaBatteryBlock', 19, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rCapacity_Remaining', 'ParsaBatteryBlock', 20, 'uint16', None, 'r', 0.1, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('wRefreshRequested', 'ParsaBatteryBlock', 21, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('wRefreshComplete', 'ParsaBatteryBlock', 22, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('wFaultReset', 'ParsaBatteryBlock', 23, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('wRefreshActivate', 'ParsaBatteryBlock', 24, 'uint16', None, 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rVtg', 'ParsaMeterBlock', 1, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rCurr', 'ParsaMeterBlock', 2, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rActive_Pwr', 'ParsaMeterBlock', 3, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rApparent_Pwr', 'ParsaMeterBlock', 4, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rReactive_pwr', 'ParsaMeterBlock', 5, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rPF', 'ParsaMeterBlock', 6, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rFreq', 'ParsaMeterBlock', 7, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rActive_Energy_Import', 'ParsaMeterBlock', 8, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rActive_Energy_Export', 'ParsaMeterBlock', 9, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rReactive_Energy_Import', 'ParsaMeterBlock', 10, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rReactive_Energy_Export', 'ParsaMeterBlock', 11, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rApparent_Import', 'ParsaMeterBlock', 12, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rApparent_Energy_Export', 'ParsaMeterBlock', 13, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rVtg_Thd', 'ParsaMeterBlock', 14, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('rCurr_Thd', 'ParsaMeterBlock', 15, 'float32', None, 'r', 1.0, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Solar_Irradiation', 'ParsaPlcBlock', 1, 'uint16', None, 'r', 0.1, 0.0, 'BB');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('DG_Control', 'ParsaPlcBlock', 2, 'uint16', None, 'r', 1.0, 0.0, 'BB');
COMMIT;
