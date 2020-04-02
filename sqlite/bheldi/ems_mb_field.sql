BEGIN;
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Device_State', 'ContexXwsection1', 21, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Device_Present', 'ContexXwsection1', 22, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_0', 'ContexXwsection1', 23, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_1', 'ContexXwsection1', 24, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_2', 'ContexXwsection1', 25, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_3', 'ContexXwsection1', 26, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Warning_Bitmap_0', 'ContexXwsection1', 27, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Enabled', 'ContexXwsection1', 28, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Enabled', 'ContexXwsection1', 29, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Sell_Enabled', 'ContexXwsection1', 30, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 31, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Active_Faults_Flag', 'ContexXwsection1', 32, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Active_Warnings_Flag', 'ContexXwsection1', 33, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_Mode_Status', 'ContexXwsection1', 34, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Configuration_Errors', 'ContexXwsection1', 35, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Voltage', 'ContexXwsection1', 36, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Current', 'ContexXwsection1', 37, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Power', 'ContexXwsection1', 38, 'sint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Temperature', 'ContexXwsection1', 39, 'uint16', 'deg C', 'r', 0.01, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 40, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Invert_DC_Current', 'ContexXwsection1', 41, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Invert_DC_Power', 'ContexXwsection1', 42, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_DC_Current', 'ContexXwsection1', 43, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_DC_Power', 'ContexXwsection1', 44, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_DC_Power_Percentage', 'ContexXwsection1', 45, 'uint16', '%', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Frequency', 'ContexXwsection1', 46, 'uint16', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Voltage', 'ContexXwsection1', 47, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Current', 'ContexXwsection1', 48, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Power', 'ContexXwsection1', 49, 'sint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Input_Power_Apparent', 'ContexXwsection1', 50, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Input_Current', 'ContexXwsection1', 51, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Input_Power', 'ContexXwsection1', 52, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_L1_Voltage', 'ContexXwsection1', 53, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_L2_Current', 'ContexXwsection1', 54, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_L2_Voltage', 'ContexXwsection1', 55, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_L1_Current', 'ContexXwsection1', 56, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Voltage_Qualified', 'ContexXwsection1', 57, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Frequency_Qualified', 'ContexXwsection1', 58, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_AC_Qualified_Duration', 'ContexXwsection1', 59, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Status', 'ContexXwsection1', 60, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Status', 'ContexXwsection1', 61, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 62, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 63, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Voltage', 'ContexXwsection1', 64, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Current', 'ContexXwsection1', 65, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Frequency', 'ContexXwsection1', 66, 'uint16', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 67, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Power', 'ContexXwsection1', 68, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 69, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 70, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 71, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 72, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Power_Apparent', 'ContexXwsection1', 73, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Voltage', 'ContexXwsection1', 74, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L1_Voltage', 'ContexXwsection1', 75, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L2_Voltage', 'ContexXwsection1', 76, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L1_Current', 'ContexXwsection1', 77, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L2_Current', 'ContexXwsection1', 78, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Current', 'ContexXwsection1', 79, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Frequency', 'ContexXwsection1', 80, 'uint16', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 81, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Power', 'ContexXwsection1', 82, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 83, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 84, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 85, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 86, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Power_Apparent', 'ContexXwsection1', 87, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Voltage', 'ContexXwsection1', 88, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Current', 'ContexXwsection1', 89, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Frequency', 'ContexXwsection1', 90, 'uint16', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Voltage_Qualified', 'ContexXwsection1', 91, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Frequency_Qualified', 'ContexXwsection1', 92, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 93, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Qualified_Duration', 'ContexXwsection1', 94, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Power', 'ContexXwsection1', 95, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 96, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 97, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 98, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection1', 99, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_L1_Voltage', 'ContexXwsection2', 100, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_L1_Current', 'ContexXwsection2', 101, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_L2_Voltage', 'ContexXwsection2', 102, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_L2_Current', 'ContexXwsection2', 103, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_AC_Power_Apparent', 'ContexXwsection2', 104, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Status', 'ContexXwsection2', 105, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_On_Reason', 'ContexXwsection2', 106, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Off_Reason', 'ContexXwsection2', 107, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Tie_Sell_Level', 'ContexXwsection2', 108, 'uint16', '', 'w', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Switch_Operating_State', 'ContexXwsection2', 109, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Switch_Mode', 'ContexXwsection2', 110, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 111, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 112, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 113, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 114, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 115, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 116, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 117, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 118, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 119, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 120, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 121, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 122, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 123, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection2', 124, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Hour', 'ContexXwsection2', 125, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Hour', 'ContexXwsection2', 126, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_Today', 'ContexXwsection2', 127, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_Today', 'ContexXwsection2', 128, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Week', 'ContexXwsection2', 129, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Week', 'ContexXwsection2', 130, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Month', 'ContexXwsection2', 131, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Month', 'ContexXwsection2', 132, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Year', 'ContexXwsection2', 133, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Year', 'ContexXwsection2', 134, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_Lifetime', 'ContexXwsection2', 135, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_Lifetime', 'ContexXwsection2', 136, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Hour', 'ContexXwsection2', 137, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Hour', 'ContexXwsection2', 138, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_Today', 'ContexXwsection2', 139, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_Today', 'ContexXwsection2', 140, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Week', 'ContexXwsection2', 141, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Week', 'ContexXwsection2', 142, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Month', 'ContexXwsection2', 143, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Month', 'ContexXwsection2', 144, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Year', 'ContexXwsection2', 145, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Year', 'ContexXwsection2', 146, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_Lifetime', 'ContexXwsection2', 147, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_Lifetime', 'ContexXwsection2', 148, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Energy_This_Hour', 'ContexXwsection2', 149, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Active_This_Hour', 'ContexXwsection2', 150, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Energy_Today', 'ContexXwsection2', 151, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Active_Today', 'ContexXwsection2', 152, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Energy_This_Week', 'ContexXwsection2', 153, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Active_This_Week', 'ContexXwsection2', 154, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Energy_This_Month', 'ContexXwsection2', 155, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Active_This_Month', 'ContexXwsection2', 156, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Energy_This_Year', 'ContexXwsection2', 157, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Active_This_Year', 'ContexXwsection2', 158, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Energy_Lifetime', 'ContexXwsection2', 159, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Input_Active_Lifetime', 'ContexXwsection2', 160, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Energy_This_Hour', 'ContexXwsection2', 161, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Active_This_Hour', 'ContexXwsection2', 162, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Energy_Today', 'ContexXwsection2', 163, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Active_Today', 'ContexXwsection2', 164, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Energy_This_Week', 'ContexXwsection2', 165, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Active_This_Week', 'ContexXwsection2', 166, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Energy_This_Month', 'ContexXwsection2', 167, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Active_This_Month', 'ContexXwsection2', 168, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Energy_This_Year', 'ContexXwsection2', 169, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Active_This_Year', 'ContexXwsection3', 170, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Energy_Lifetime', 'ContexXwsection3', 171, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Output_Active_Lifetime', 'ContexXwsection3', 172, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Hour', 'ContexXwsection3', 173, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Hour', 'ContexXwsection3', 174, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_Today', 'ContexXwsection3', 175, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_Today', 'ContexXwsection3', 176, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Week', 'ContexXwsection3', 177, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Week', 'ContexXwsection3', 178, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Month', 'ContexXwsection3', 179, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Month', 'ContexXwsection3', 180, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Year', 'ContexXwsection3', 181, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Year', 'ContexXwsection3', 182, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_Lifetime', 'ContexXwsection3', 183, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_Lifetime', 'ContexXwsection3', 184, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Energy_This_Hour', 'ContexXwsection3', 185, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Active_This_Hour', 'ContexXwsection3', 186, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Energy_Today', 'ContexXwsection3', 187, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Active_Today', 'ContexXwsection3', 188, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Energy_This_Week', 'ContexXwsection3', 189, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Active_This_Week', 'ContexXwsection3', 190, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Energy_This_Month', 'ContexXwsection3', 191, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Active_This_Month', 'ContexXwsection3', 192, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Energy_This_Year', 'ContexXwsection3', 193, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Active_This_Year', 'ContexXwsection3', 194, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Energy_Lifetime', 'ContexXwsection3', 195, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Input_Active_Lifetime', 'ContexXwsection3', 196, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Identify_Enable', 'ContexXwsection3', 197, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Enable/_Disable', 'ContexXwsection3', 198, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Sell_Enable/Disable', 'ContexXwsection3', 199, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection3', 200, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Enable/_Disable', 'ContexXwsection3', 201, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Force_Charger_State', 'ContexXwsection3', 202, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Operating_Mode', 'ContexXwsection3', 203, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Reset', 'ContexXwsection3', 204, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Clear', 'ContexXwsection3', 205, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Search_Mode', 'ContexXwsection3', 206, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Mode', 'ContexXwsection3', 207, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Remote_Power_Off', 'ContexXwsection3', 208, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Power_Save', 'ContexXwsection3', 209, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Sell_Delay_40_Sec', 'ContexXwsection3', 210, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_Cycle', 'ContexXwsection3', 211, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum__Charge_Rate', 'ContexXwsection3', 212, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Now', 'ContexXwsection3', 213, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Default_Battery_Temperature', 'ContexXwsection3', 214, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('GFS_Enable', 'ContexXwsection3', 215, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Type', 'ContexXwsection3', 216, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Nominal_Battery_Voltage', 'ContexXwsection3', 217, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Bank_Capacity', 'ContexXwsection3', 218, 'uint16', 'Ah', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Temperature_Coefficient', 'ContexXwsection3', 219, 'uint16', 'mV/deg C', 'rw', -1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Support_Voltage', 'ContexXwsection3', 220, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Recharge_Voltage', 'ContexXwsection3', 221, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Cut_Out', 'ContexXwsection3', 222, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Cut_Out_Delay', 'ContexXwsection3', 223, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection3', 224, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Trigger_Set', 'ContexXwsection3', 225, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Trigger_Set_Delay', 'ContexXwsection3', 226, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection3', 227, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Trigger_Clear', 'ContexXwsection3', 228, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Trigger_Clear_Delay', 'ContexXwsection3', 229, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Priority', 'ContexXwsection3', 230, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Breaker_Size', 'ContexXwsection3', 231, 'uint16', 'A', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC2_Breaker_Size', 'ContexXwsection3', 232, 'uint16', 'A', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Cut_Out', 'ContexXwsection3', 233, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Trigger_Set', 'ContexXwsection3', 234, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Trigger_Set_Delay', 'ContexXwsection3', 235, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection3', 236, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Trigger_Clear', 'ContexXwsection3', 237, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Trigger_Clear_Delay', 'ContexXwsection3', 238, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Search_Watts', 'ContexXwsection3', 239, 'uint16', 'W', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Search_Delay', 'ContexXwsection3', 240, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection3', 241, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Voltage_Set_Point', 'ContexXwsection3', 242, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Support', 'ContexXwsection3', 243, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection3', 244, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Bulk/Boost_Voltage_Set_Point', 'ContexXwsection3', 245, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Absorption_Voltage_Set_Point', 'ContexXwsection3', 246, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Absorption_Time', 'ContexXwsection3', 247, 'uint16', 'min', 'rw', 0.016667, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection3', 248, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Float_Voltage_Set_Point', 'ContexXwsection3', 249, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Low_Voltage', 'ContexXwsection4', 250, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC2_Low_Voltage', 'ContexXwsection4', 251, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_High_Voltage', 'ContexXwsection4', 252, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC2_High_Voltage', 'ContexXwsection4', 253, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_section_Start', 'ContexXwsection4', 254, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_section_Stop', 'ContexXwsection4', 255, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Shave_Stop', 'ContexXwsection4', 256, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Shave_Start', 'ContexXwsection4', 257, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Low_Frequency', 'ContexXwsection4', 258, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC2_Low_Frequency', 'ContexXwsection4', 259, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_High_Frequency', 'ContexXwsection4', 260, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC2_High_Frequency', 'ContexXwsection4', 261, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Shave', 'ContexXwsection4', 262, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Grid_Support', 'ContexXwsection4', 263, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum__Sell_Amps', 'ContexXwsection4', 264, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Shave_Amps', 'ContexXwsection4', 265, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Support_Enable', 'ContexXwsection4', 266, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 267, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Support_Amps', 'ContexXwsection4', 268, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Manual_Aux', 'ContexXwsection4', 269, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 270, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Active_Level', 'ContexXwsection4', 271, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 272, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Temperature_Trigger_Set', 'ContexXwsection4', 273, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Temperature_Trigger_Set_Delay', 'ContexXwsection4', 274, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 275, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Temperature_Trigger_Clear', 'ContexXwsection4', 276, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Temperature_Trigger_Clear_Delay', 'ContexXwsection4', 277, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 278, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Temperature_Trigger_Set', 'ContexXwsection4', 279, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Temperature_Trigger_Set_Delay', 'ContexXwsection4', 280, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 281, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Temperature_Trigger_Clear', 'ContexXwsection4', 282, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Temperature_Trigger_Clear_Delay', 'ContexXwsection4', 283, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Refresh_Configuration_Data', 'ContexXwsection4', 284, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Output_Association_(Loads)', 'ContexXwsection4', 285, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC2_Association_(Generator)', 'ContexXwsection4', 286, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Association_(Grid)', 'ContexXwsection4', 287, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('DC_Association_(Battery)', 'ContexXwsection4', 288, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Discharge_Current', 'ContexXwsection4', 289, 'uint16', 'A', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Discharge_Time_Interval', 'ContexXwsection4', 290, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('GVS_Enable/Disable', 'ContexXwsection4', 291, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Reactive_Capacitive_Power', 'ContexXwsection4', 292, 'uint16', '%', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Reactive_Inductive_Power', 'ContexXwsection4', 293, 'uint16', '%', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Reactive_Power_Grid_Voltage', 'ContexXwsection4', 294, 'uint16', 'V', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Minimum_Reactive_Power_Grid_Voltage', 'ContexXwsection4', 295, 'uint16', 'V', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inductive_Voltage_Set_Point', 'ContexXwsection4', 296, 'uint16', 'V', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Capacitive_Voltage_Set_Point', 'ContexXwsection4', 297, 'uint16', 'V', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Voltage_Threshold_to_start/stop_excitation', 'ContexXwsection4', 298, 'uint16', 'V', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Excitation_Control_Delay_Time', 'ContexXwsection4', 299, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 300, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('API_Frequency_Start_Level', 'ContexXwsection4', 301, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('API_Frequency_Stop_Level', 'ContexXwsection4', 302, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('API_Frequency_Recover_Level', 'ContexXwsection4', 303, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('API_Gradient_with_Time', 'ContexXwsection4', 304, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('APR_Frequency_Start_Level', 'ContexXwsection4', 305, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('APR_Frequency_Stop_Level', 'ContexXwsection4', 306, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('APR_Frequency_Recover_Level', 'ContexXwsection4', 307, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('APR_Gradient_with_Frequency', 'ContexXwsection4', 308, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('APR_Gradient_with_Time', 'ContexXwsection4', 309, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum__Sell_Scale_Percentage', 'ContexXwsection4', 310, 'uint16', '%', 'w', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('State_of_Charge_Level_to_Stop', 'ContexXwsection4', 311, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('State_of_Charge_Stop_Delay', 'ContexXwsection4', 312, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('State_of_Charge_Level_to_Start', 'ContexXwsection4', 313, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('State_of_Charge_Start_Delay', 'ContexXwsection4', 314, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_Support_Plus', 'ContexXwsection4', 315, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Coupling', 'ContexXwsection4', 316, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Energy_Balance', 'ContexXwsection4', 317, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Peak_Load_Shaving_Delay', 'ContexXwsection4', 318, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Cut_Out_Hysteresis', 'ContexXwsection4', 319, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 320, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Transfer_Switch_Delay', 'ContexXwsection4', 321, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC2_Transfer_Switch_Delay', 'ContexXwsection4', 322, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Sell_section_Start', 'ContexXwsection4', 323, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Sell_section_End', 'ContexXwsection4', 324, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Trigger_Start', 'ContexXwsection4', 325, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Trigger_End', 'ContexXwsection4', 326, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 327, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Heat_Sink_High_Temperature_Trigger_Set', 'ContexXwsection4', 328, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Heat_Sink_High_Temperature_Trigger_Set_Delay', 'ContexXwsection4', 329, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum__Sell_Scale_Percentage', 'ContexXwsection4', 330, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Heat_Sink_High_Temperature_Trigger_Clear', 'ContexXwsection4', 331, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Heat_Sink_High_Temperature_Trigger_Clear_Delay', 'ContexXwsection4', 332, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 333, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Trigger_Source', 'ContexXwsection4', 334, 'uint32', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Remote_Sell', 'ContexXwsection4', 335, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('External_Transfer_Contactor', 'ContexXwsection4', 336, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Transient_Over_Voltage_Disconnect', 'ContexXwsection4', 337, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 338, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Bulk_Charge_Current', 'ContexXwsection4', 339, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Absorption_Charge_Current', 'ContexXwsection4', 340, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Float_Charge_Current', 'ContexXwsection4', 341, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 342, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 343, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 344, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 345, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 346, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 347, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 348, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 349, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 350, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection4', 351, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 352, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 353, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 354, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 355, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 356, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 357, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 358, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 359, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 360, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 361, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 362, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 363, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 364, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 365, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 366, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 367, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 368, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 369, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 370, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 371, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 372, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 373, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 374, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 375, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 376, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 377, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 378, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 379, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 380, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 381, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 382, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 383, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 384, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 385, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 386, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 387, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 388, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 389, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Voltage', 'ContexXwsection5', 390, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Current', 'ContexXwsection5', 391, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Frequency', 'ContexXwsection5', 392, 'uint32', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Voltage_Qualified', 'ContexXwsection5', 393, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Frequency_Qualified', 'ContexXwsection5', 394, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Qualified_Duration', 'ContexXwsection5', 395, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Power', 'ContexXwsection5', 396, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_L1_Voltage', 'ContexXwsection5', 397, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_L1_Current', 'ContexXwsection5', 398, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_L2_Voltage', 'ContexXwsection5', 399, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_L2_Current', 'ContexXwsection5', 400, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_AC_Power_Apparent', 'ContexXwsection5', 401, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Voltage', 'ContexXwsection5', 402, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Current', 'ContexXwsection5', 403, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Frequency', 'ContexXwsection5', 404, 'uint32', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Voltage_Qualified', 'ContexXwsection5', 405, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Frequency_Qualified', 'ContexXwsection5', 406, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Qualified_Duration', 'ContexXwsection5', 407, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Power', 'ContexXwsection5', 408, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_L1_Voltage', 'ContexXwsection5', 409, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_L1_Current', 'ContexXwsection5', 410, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_L2_Voltage', 'ContexXwsection5', 411, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_L2_Current', 'ContexXwsection5', 412, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_AC_Power_Apparent', 'ContexXwsection5', 413, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 414, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 415, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 416, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 417, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 418, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 419, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 420, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 421, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 422, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 423, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 424, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 425, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 426, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 427, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 428, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexXwsection5', 429, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Energy_This_Hour', 'ContexXwsection5', 430, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Active_This_Hour', 'ContexXwsection5', 431, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Energy_Today', 'ContexXwsection5', 432, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Active_Today', 'ContexXwsection5', 433, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Energy_This_Week', 'ContexXwsection5', 434, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Active_This_Week', 'ContexXwsection5', 435, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Energy_This_Month', 'ContexXwsection5', 436, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Active_This_Month', 'ContexXwsection5', 437, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Energy_This_Year', 'ContexXwsection5', 438, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Active_This_Year', 'ContexXwsection6', 439, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Energy_Lifetime', 'ContexXwsection6', 440, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(1)_Input_Active_Lifetime', 'ContexXwsection6', 441, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Energy_This_Hour', 'ContexXwsection6', 442, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Active_This_Hour', 'ContexXwsection6', 443, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Energy_Today', 'ContexXwsection6', 444, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Active_Today', 'ContexXwsection6', 445, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Energy_This_Week', 'ContexXwsection6', 446, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Active_This_Week', 'ContexXwsection6', 447, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Energy_This_Month', 'ContexXwsection6', 448, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Active_This_Month', 'ContexXwsection6', 449, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Energy_This_Year', 'ContexXwsection6', 450, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Active_This_Year', 'ContexXwsection6', 451, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Generator_(2)_Input_Energy_Lifetime', 'ContexXwsection6', 452, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Device_State', 'ContexAgssection1', 21, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Device_Present', 'ContexAgssection1', 22, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Enabled', 'ContexAgssection1', 23, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Enabled', 'ContexAgssection1', 24, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Active_Faults_Flag', 'ContexAgssection1', 25, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Active_Warnings_Flag', 'ContexAgssection1', 26, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_Mode_Status', 'ContexAgssection1', 27, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_0', 'ContexAgssection1', 28, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_1', 'ContexAgssection1', 29, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_2', 'ContexAgssection1', 30, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Warning_Bitmap_0', 'ContexAgssection1', 31, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Status', 'ContexAgssection1', 32, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Configuration_Errors', 'ContexAgssection1', 33, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Voltage', 'ContexAgssection1', 34, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Current', 'ContexAgssection1', 35, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Power', 'ContexAgssection1', 36, 'sint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Temperature', 'ContexAgssection1', 37, 'uint16', 'deg C', 'r', 0.01, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Status', 'ContexAgssection1', 38, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Invert_DC_Current', 'ContexAgssection1', 39, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Invert_DC_Power', 'ContexAgssection1', 40, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_DC_Current', 'ContexAgssection1', 41, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_DC_Power', 'ContexAgssection1', 42, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_DC_Power_Percentage', 'ContexAgssection1', 43, 'uint16', '%', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Frequency', 'ContexAgssection1', 44, 'uint16', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Voltage', 'ContexAgssection1', 45, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Current', 'ContexAgssection1', 46, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Power', 'ContexAgssection1', 47, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Power_Apparent', 'ContexAgssection1', 48, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_L1_Voltage', 'ContexAgssection1', 49, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_L2_Current', 'ContexAgssection1', 50, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_L2_Voltage', 'ContexAgssection1', 51, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_L1_Current', 'ContexAgssection1', 52, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Voltage_Qualified', 'ContexAgssection1', 53, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Frequency_Qualified', 'ContexAgssection1', 54, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Qualified_Duration', 'ContexAgssection1', 55, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 56, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 57, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 58, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 59, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Voltage', 'ContexAgssection1', 60, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L1_Voltage', 'ContexAgssection1', 61, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L2_Voltage', 'ContexAgssection1', 62, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L1_Current', 'ContexAgssection1', 63, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_L2_Current', 'ContexAgssection1', 64, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Current', 'ContexAgssection1', 65, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Power', 'ContexAgssection1', 66, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 67, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 68, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Power_Apparent', 'ContexAgssection1', 69, 'uint32', 'VA', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_AC_Frequency', 'ContexAgssection1', 70, 'uint16', 'Hz', 'r', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 71, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 72, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 73, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 74, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection1', 75, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Hour', 'ContexAgssection1', 76, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Hour', 'ContexAgssection1', 77, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_Today', 'ContexAgssection1', 78, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_Today', 'ContexAgssection1', 79, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Week', 'ContexAgssection1', 80, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Week', 'ContexAgssection1', 81, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Month', 'ContexAgssection1', 82, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Month', 'ContexAgssection1', 83, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_This_Year', 'ContexAgssection1', 84, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_This_Year', 'ContexAgssection1', 85, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_Battery_Lifetime', 'ContexAgssection1', 86, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Discharge_Active_Lifetime', 'ContexAgssection1', 87, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Hour', 'ContexAgssection1', 88, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Hour', 'ContexAgssection1', 89, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_Today', 'ContexAgssection1', 90, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_Today', 'ContexAgssection1', 91, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Week', 'ContexAgssection1', 92, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Week', 'ContexAgssection1', 93, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Month', 'ContexAgssection1', 94, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Month', 'ContexAgssection1', 95, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Year', 'ContexAgssection2', 96, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Year', 'ContexAgssection2', 97, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Batter_Lifetime', 'ContexAgssection2', 98, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_Lifetime', 'ContexAgssection2', 99, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Energy_This_Hour', 'ContexAgssection2', 100, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Active_This_Hour', 'ContexAgssection2', 101, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Energy_Today', 'ContexAgssection2', 102, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Active_Today', 'ContexAgssection2', 103, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Energy_This_Week', 'ContexAgssection2', 104, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Active_This_Week', 'ContexAgssection2', 105, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Energy_This_Month', 'ContexAgssection2', 106, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Active_This_Month', 'ContexAgssection2', 107, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Energy_This_Year', 'ContexAgssection2', 108, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Active_This_Year', 'ContexAgssection2', 109, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Energy_Lifetime', 'ContexAgssection2', 110, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Input_Active_Lifetime', 'ContexAgssection2', 111, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Hour', 'ContexAgssection2', 112, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Hour', 'ContexAgssection2', 113, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_Today', 'ContexAgssection2', 114, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_Today', 'ContexAgssection2', 115, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Week', 'ContexAgssection2', 116, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Week', 'ContexAgssection2', 117, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Month', 'ContexAgssection2', 118, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Month', 'ContexAgssection2', 119, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_This_Year', 'ContexAgssection2', 120, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_This_Year', 'ContexAgssection2', 121, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Energy_Lifetime', 'ContexAgssection2', 122, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Output_Active_Lifetime', 'ContexAgssection2', 123, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Enable/Disable', 'ContexAgssection2', 124, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Enable/Disable', 'ContexAgssection2', 125, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Force_Charger_State', 'ContexAgssection2', 126, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Operating_Mode', 'ContexAgssection2', 127, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Reset', 'ContexAgssection2', 128, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Clear', 'ContexAgssection2', 129, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Search_Mode', 'ContexAgssection2', 130, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Inverter_Mode', 'ContexAgssection2', 131, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_Cycle', 'ContexAgssection2', 132, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum__Charge_Rate', 'ContexAgssection2', 133, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Now', 'ContexAgssection2', 134, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Override_Enable/Disable', 'ContexAgssection2', 135, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Default_Battery_Temperature', 'ContexAgssection2', 136, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Type', 'ContexAgssection2', 137, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Nominal_Battery_Voltage', 'ContexAgssection2', 138, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Bank_Capacity', 'ContexAgssection2', 139, 'uint16', 'Ah', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Temperature_Coefficient', 'ContexAgssection2', 140, 'uint16', 'mV/deg C', 'rw', -1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Recharge_Voltage', 'ContexAgssection2', 141, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection2', 142, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection2', 143, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Cut_Out_Delay', 'ContexAgssection2', 144, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Breaker_Size', 'ContexAgssection2', 145, 'uint16', 'A', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Cut_Out', 'ContexAgssection2', 146, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Search_Watts', 'ContexAgssection2', 147, 'uint16', 'W', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Search_Delay', 'ContexAgssection2', 148, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Voltage_Set_Point', 'ContexAgssection2', 149, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Support', 'ContexAgssection2', 150, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection2', 151, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Bulk/Boost_Voltage_Set_Point', 'ContexAgssection2', 152, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Absorption_Voltage_Set_Point', 'ContexAgssection2', 153, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Absorption_Time', 'ContexAgssection2', 154, 'uint16', 'min', 'rw', 0.016667, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection2', 155, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Float_Voltage_Set_Point', 'ContexAgssection2', 156, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_section_Start', 'ContexAgssection2', 157, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_section_Stop', 'ContexAgssection2', 158, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Shave_section_Start', 'ContexAgssection2', 159, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Load_Shave_section_Stop', 'ContexAgssection2', 160, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Invert_section_Start', 'ContexAgssection2', 161, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Invert_section_Stop', 'ContexAgssection2', 162, 'uint16', 'min', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Low_Voltage', 'ContexAgssection2', 163, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Qualify_Time', 'ContexAgssection2', 164, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection2', 165, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_High_Voltage', 'ContexAgssection2', 166, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_Low_Frequency', 'ContexAgssection2', 167, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC1_High_Frequency', 'ContexAgssection2', 168, 'uint16', 'Hz', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Identify_Enable', 'ContexAgssection2', 169, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('European_Frequency', 'ContexAgssection2', 170, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Peak_Load_Shaving_Enable', 'ContexAgssection2', 171, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Support_Mode_Enable', 'ContexAgssection2', 172, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Peak_Load_Shaving_Current', 'ContexAgssection2', 173, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Refresh_Configuration_Data', 'ContexAgssection2', 174, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Output_Association_(Loads)', 'ContexAgssection2', 175, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Input_Association_(Generator)', 'ContexAgssection2', 176, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('DC_Association_(Battery)', 'ContexAgssection2', 177, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Cut_Out_Hysteresis', 'ContexAgssection3', 178, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexAgssection3', 179, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Store_Invert_State', 'ContexAgssection3', 180, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Coupling', 'ContexAgssection3', 181, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('AC_Support_on_Battery_SOC_Enable', 'ContexAgssection3', 182, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('State_of_Charge_Level_to_Start_AC_Support', 'ContexAgssection3', 183, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('State_of_Charge_Level_to_Stop_AC_Support', 'ContexAgssection3', 184, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Discharge_Current', 'ContexAgssection3', 185, 'uint16', 'A', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Discharge_Time_Interval', 'ContexAgssection3', 186, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Peak_Load_Shaving_Delay', 'ContexAgssection3', 187, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Enhanced_AC_Support', 'ContexAgssection3', 188, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Bulk_Charge_Current', 'ContexAgssection3', 189, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Absorption_Charge_Current', 'ContexAgssection3', 190, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('No_Load_Voltage_Derating', 'ContexAgssection3', 191, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum_Float_Charge_Current', 'ContexAgssection3', 192, 'uint32', 'A', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Time_Delay_to_Enter_AC_Support_on_SOC', 'ContexAgssection3', 193, 'uint16', 's', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Time_Delay_to_Exit_AC_Support_on_SOC', 'ContexAgssection3', 194, 'uint16', 's', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Device_State', 'ContexMpptsection1', 21, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Enabled', 'ContexMpptsection1', 22, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Device_Present', 'ContexMpptsection1', 23, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_Mode_Status', 'ContexMpptsection1', 24, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Active_Faults_Flag', 'ContexMpptsection1', 25, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Active_Warnings_Flag', 'ContexMpptsection1', 26, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_0', 'ContexMpptsection1', 27, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Fault_Bitmap_1', 'ContexMpptsection1', 28, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Warning_Bitmap_0', 'ContexMpptsection1', 29, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charger_Status', 'ContexMpptsection1', 30, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Configuration_Errors', 'ContexMpptsection1', 31, 'uint32', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Input_DC_Voltage', 'ContexMpptsection1', 32, 'uint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Input_DC_Current', 'ContexMpptsection1', 33, 'uint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Input_DC_Power', 'ContexMpptsection1', 34, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 35, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 36, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 37, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 38, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Temperature', 'ContexMpptsection1', 39, 'uint16', 'deg C', 'r', 0.01, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 40, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Output_DC_Voltage', 'ContexMpptsection1', 41, 'sint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Output_DC_Current', 'ContexMpptsection1', 42, 'sint32', 'A', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Output_DC_Power', 'ContexMpptsection1', 43, 'uint32', 'W', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('DC_Power_Output_Percentage', 'ContexMpptsection1', 44, 'uint16', '%', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Status', 'ContexMpptsection1', 45, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Voltage', 'ContexMpptsection1', 46, 'sint32', 'V', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 47, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 48, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_On_Reason', 'ContexMpptsection1', 49, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Off_Reason', 'ContexMpptsection1', 50, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_PV_This_Hour', 'ContexMpptsection1', 51, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('PV_Input_Active_This_Hour', 'ContexMpptsection1', 52, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_PV_Today', 'ContexMpptsection1', 53, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('PV_Input_Active_Today', 'ContexMpptsection1', 54, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_PV_This_Week', 'ContexMpptsection1', 55, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('PV_Input_Active_This_Week', 'ContexMpptsection1', 56, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_PV_This_Month', 'ContexMpptsection1', 57, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('PV_Input_Active_This_Month', 'ContexMpptsection1', 58, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_PV_This_Year', 'ContexMpptsection1', 59, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('PV_Input_Active_This_Year', 'ContexMpptsection1', 60, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_From_PV_Lifetime', 'ContexMpptsection1', 61, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('PV_Input_Active_Lifetime', 'ContexMpptsection1', 62, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Hour', 'ContexMpptsection1', 63, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Hour', 'ContexMpptsection1', 64, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_Today', 'ContexMpptsection1', 65, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_Today', 'ContexMpptsection1', 66, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Week', 'ContexMpptsection1', 67, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Week', 'ContexMpptsection1', 68, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Month', 'ContexMpptsection1', 69, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Month', 'ContexMpptsection1', 70, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_This_Year', 'ContexMpptsection1', 71, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_This_Year', 'ContexMpptsection1', 72, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Energy_To_Battery_Lifetime', 'ContexMpptsection1', 73, 'uint32', 'kWh', 'r', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Charge_Active_Lifetime', 'ContexMpptsection1', 74, 'uint32', 's', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 75, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 76, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 77, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 78, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 79, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 80, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 81, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 82, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 83, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection1', 84, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('MPPT_Enable', 'ContexMpptsection2', 85, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 86, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('MPPT_Reference_Voltage', 'ContexMpptsection2', 87, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 88, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Type', 'ContexMpptsection2', 89, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Nominal_Battery_Voltage', 'ContexMpptsection2', 90, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Bank_Capacity', 'ContexMpptsection2', 91, 'uint16', 'Ah', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Battery_Temperature_Coefficient', 'ContexMpptsection2', 92, 'uint16', 'mV/deg C', 'rw', -1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Force_Charger_State', 'ContexMpptsection2', 93, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Reset', 'ContexMpptsection2', 94, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Operating_Mode', 'ContexMpptsection2', 95, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Clear', 'ContexMpptsection2', 96, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Voltage_Set_Point', 'ContexMpptsection2', 97, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Bulk/Boost_Voltage_Set_Point', 'ContexMpptsection2', 98, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Float_Voltage_Set_Point', 'ContexMpptsection2', 99, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Recharge_Voltage', 'ContexMpptsection2', 100, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Absorption_Voltage_Set_Point', 'ContexMpptsection2', 101, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Absorption_Time', 'ContexMpptsection2', 102, 'uint16', 'min', 'rw', 0.016667, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_Cycle', 'ContexMpptsection2', 103, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Maximum__Charge_Rate', 'ContexMpptsection2', 104, 'uint16', '%', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Equalize_Now', 'ContexMpptsection2', 105, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 106, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 107, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Charge_Mode', 'ContexMpptsection2', 108, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Default_Battery_Temperature', 'ContexMpptsection2', 109, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Identify_Enable', 'ContexMpptsection2', 110, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Active_Level', 'ContexMpptsection2', 111, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Voltage', 'ContexMpptsection2', 112, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Manual_Aux', 'ContexMpptsection2', 113, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 114, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Auxiliary_Output_Trigger_Source', 'ContexMpptsection2', 115, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 116, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Voltage_Trigger_Set', 'ContexMpptsection2', 117, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Voltage_Trigger_Set_Delay', 'ContexMpptsection2', 118, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 119, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Voltage_Trigger_Clear', 'ContexMpptsection2', 120, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Voltage_Trigger_Clear_Delay', 'ContexMpptsection2', 121, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 122, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Voltage_Trigger_Set', 'ContexMpptsection2', 123, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Voltage_Trigger_Set_Delay', 'ContexMpptsection2', 124, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 125, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Voltage_Trigger_Clear', 'ContexMpptsection2', 126, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Voltage_Trigger_Clear_Delay', 'ContexMpptsection2', 127, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 128, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Array_Voltage_Trigger_Set', 'ContexMpptsection2', 129, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Array_Voltage_Trigger_Set_Delay', 'ContexMpptsection2', 130, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 131, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Array_Voltage_Trigger_Clear', 'ContexMpptsection2', 132, 'uint32', 'V', 'rw', 0.001, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Array_Voltage_Trigger_Clear_Delay', 'ContexMpptsection2', 133, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 134, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Temperature_Trigger_Set', 'ContexMpptsection2', 135, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Temperature_Trigger_Set_Delay', 'ContexMpptsection2', 136, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 137, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Temperature_Trigger_Clear', 'ContexMpptsection2', 138, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Low_Battery_Temperature_Trigger_Clear_Delay', 'ContexMpptsection2', 139, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 140, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Temperature_Trigger_Set', 'ContexMpptsection2', 141, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Temperature_Trigger_Set_Delay', 'ContexMpptsection2', 142, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 143, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Temperature_Trigger_Clear', 'ContexMpptsection2', 144, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Battery_Temperature_Trigger_Clear_Delay', 'ContexMpptsection2', 145, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 146, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Heatsink_Temperature_Trigger_Set', 'ContexMpptsection2', 147, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Heatsink_Temperature_Trigger_Set_Delay', 'ContexMpptsection2', 148, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 149, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Heatsink_Temperature_Trigger_Clear', 'ContexMpptsection2', 150, 'uint32', 'deg C', 'rw', 0.001, -273.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('High_Heatsink_Temperature_Trigger_Clear_Delay', 'ContexMpptsection2', 151, 'uint16', 's', 'rw', 0.01, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('skip', 'ContexMpptsection2', 152, 'uint16', '', 'r', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('Refresh_Configuration_Data', 'ContexMpptsection2', 153, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('DC_Input_Association_(PV)', 'ContexMpptsection2', 154, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
INSERT INTO ems_mb_field(field, section, seq, fmt, unit, access, scale, offset, encoding)
VALUES ('DC_Output_Association_(Battery)', 'ContexMpptsection2', 155, 'uint16', '', 'rw', 1.0, 0.0, 'BL');
COMMIT;
