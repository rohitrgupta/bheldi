BEGIN;
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (3, 'Total_Inverter_rCharging_Curr', 'SUM', 'Inverter_1_rCharging_Curr,Inverter_2_rCharging_Curr,Inverter_3_rCharging_Curr,Inverter_4_rCharging_Curr,Inverter_5_rCharging_Curr,Inverter_6_rCharging_Curr,Inverter_7_rCharging_Curr', 'Parsa', 'F', 'Inverter_7_rCharging_Curr');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (4, 'Inverter_rBattery_discharge_current1', 'SUM', 'Inverter_1_rBattery_discharge_current1,Inverter_2_rBattery_discharge_current1,Inverter_3_rBattery_discharge_current1,Inverter_4_rBattery_discharge_current1,Inverter_5_rBattery_discharge_current1,Inverter_6_rBattery_discharge_current1,Inverter_7_rBattery_discharge_current1', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (8, 'Total_rPV_Char_Pwr', 'SUM', 'Inverter_1_rPV_Char_Pwr,Inverter_2_rPV_Char_Pwr,Inverter_3_rPV_Char_Pwr,Inverter_4_rPV_Char_Pwr,Inverter_5_rPV_Char_Pwr,Inverter_6_rPV_Char_Pwr,Inverter_7_rPV_Char_Pwr', 'Parsa', 'F', 'Inverter_7_rPV_Char_Pwr');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (9, 'Average_rPV_Input_Vtg', 'AVG', 'Inverter_1_rPV1_Input_Vtg,Inverter_2_rPV1_Input_Vtg,Inverter_3_rPV1_Input_Vtg,Inverter_4_rPV1_Input_Vtg,Inverter_5_rPV1_Input_Vtg,Inverter_6_rPV1_Input_Vtg,Inverter_7_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (10, 'Solar_string1_Voltage', 'SUM', 'Inverter_1_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (11, 'Solar_string2_Voltage', 'SUM', 'Inverter_2_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (12, 'Solar_string3_Voltage', 'SUM', 'Inverter_3_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (13, 'Solar_string4_Voltage', 'SUM', 'Inverter_4_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (14, 'Solar_string5_Voltage', 'SUM', 'Inverter_5_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (15, 'Solar_string6_Voltage', 'SUM', 'Inverter_6_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (16, 'Solar_string7_Voltage', 'SUM', 'Inverter_7_rPV1_Input_Vtg', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (17, 'Solar_string1_Current', 'SUM', 'Inverter_1_rPV_IP_Curr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (18, 'Solar_string2_Current', 'SUM', 'Inverter_2_rPV_IP_Curr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (19, 'Solar_string3_Current', 'SUM', 'Inverter_3_rPV_IP_Curr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (20, 'Solar_string4_Current', 'SUM', 'Inverter_4_rPV_IP_Curr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (21, 'Solar_string5_Current', 'SUM', 'Inverter_5_rPV_IP_Curr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (22, 'Solar_string6_Current', 'SUM', 'Inverter_6_rPV_IP_Curr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (23, 'Solar_string7_Current', 'SUM', 'Inverter_7_rPV_IP_Curr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (24, 'Solar_string1_Power', 'SUM', 'Inverter_1_rPV_Char_Pwr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (25, 'Solar_string2_Power', 'SUM', 'Inverter_2_rPV_Char_Pwr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (26, 'Solar_string3_Power', 'SUM', 'Inverter_3_rPV_Char_Pwr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (27, 'Solar_string4_Power', 'SUM', 'Inverter_4_rPV_Char_Pwr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (28, 'Solar_string5_Power', 'SUM', 'Inverter_5_rPV_Char_Pwr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (29, 'Solar_string6_Power', 'SUM', 'Inverter_6_rPV_Char_Pwr', 'Parsa', 'T', '10');
INSERT INTO ems_process_function(id, var, operation, parameters, process, trigger, trigger_field)
VALUES (30, 'Solar_string7_Power', 'SUM', 'Inverter_7_rPV_Char_Pwr', 'Parsa', 'T', '10');
COMMIT;
