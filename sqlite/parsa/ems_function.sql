BEGIN;
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string1_Voltage = Inverter_1_rPV1_Input_Vtg', 'F', 'Inverter_1_rPV1_Input_Vtg');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string2_Voltage = Inverter_2_rPV1_Input_Vtg', 'F', 'Inverter_2_rPV1_Input_Vtg');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string3_Voltage = Inverter_3_rPV1_Input_Vtg', 'F', 'Inverter_3_rPV1_Input_Vtg');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string4_Voltage = Inverter_4_rPV1_Input_Vtg', 'F', 'Inverter_4_rPV1_Input_Vtg');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string5_Voltage = Inverter_5_rPV1_Input_Vtg', 'F', 'Inverter_5_rPV1_Input_Vtg');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string6_Voltage = Inverter_6_rPV1_Input_Vtg', 'F', 'Inverter_6_rPV1_Input_Vtg');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string7_Voltage = Inverter_7_rPV1_Input_Vtg', 'F', 'Inverter_7_rPV1_Input_Vtg');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string1_Current = Inverter_1_rPV_IP_Curr', 'F', 'Inverter_1_rPV_IP_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string2_Current = Inverter_2_rPV_IP_Curr', 'F', 'Inverter_2_rPV_IP_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string3_Current = Inverter_3_rPV_IP_Curr', 'F', 'Inverter_3_rPV_IP_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string4_Current = Inverter_4_rPV_IP_Curr', 'F', 'Inverter_4_rPV_IP_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string5_Current = Inverter_5_rPV_IP_Curr', 'F', 'Inverter_5_rPV_IP_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string6_Current = Inverter_6_rPV_IP_Curr', 'F', 'Inverter_6_rPV_IP_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string7_Current = Inverter_7_rPV_IP_Curr', 'F', 'Inverter_7_rPV_IP_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string1_Power = Inverter_1_rPV_Char_Pwr', 'F', 'Inverter_1_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string2_Power = Inverter_2_rPV_Char_Pwr', 'F', 'Inverter_2_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string3_Power = Inverter_3_rPV_Char_Pwr', 'F', 'Inverter_3_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string4_Power = Inverter_4_rPV_Char_Pwr', 'F', 'Inverter_4_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string5_Power = Inverter_5_rPV_Char_Pwr', 'F', 'Inverter_5_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string6_Power = Inverter_6_rPV_Char_Pwr', 'F', 'Inverter_6_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Solar_string7_Power = Inverter_7_rPV_Char_Pwr', 'F', 'Inverter_7_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Total_rPV_Char_Pwr = Inverter_1_rPV_Char_Pwr + Inverter_2_rPV_Char_Pwr + Inverter_3_rPV_Char_Pwr + Inverter_4_rPV_Char_Pwr + Inverter_5_rPV_Char_Pwr + Inverter_6_rPV_Char_Pwr + Inverter_7_rPV_Char_Pwr', 'F', 'Inverter_7_rPV_Char_Pwr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Inverter_rBattery_discharge_current1 = Inverter_1_rBattery_discharge_current1 + Inverter_2_rBattery_discharge_current1 + Inverter_3_rBattery_discharge_current1 + Inverter_4_rBattery_discharge_current1 + Inverter_5_rBattery_discharge_current1 + Inverter_6_rBattery_discharge_current1 + Inverter_7_rBattery_discharge_current1', 'F', 'Inverter_7_rBattery_discharge_current1');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Total_Inverter_rCharging_Curr = Inverter_1_rCharging_Curr + Inverter_2_rCharging_Curr + Inverter_3_rCharging_Curr + Inverter_4_rCharging_Curr + Inverter_5_rCharging_Curr + Inverter_6_rCharging_Curr + Inverter_7_rCharging_Curr', 'F', 'Inverter_7_rCharging_Curr');
INSERT INTO ems_function(process, code, event_type, event_on)
VALUES ('Parsa', 'Average_rPV_Input_Vtg = ( Inverter_1_rPV1_Input_Vtg + Inverter_2_rPV1_Input_Vtg + Inverter_3_rPV1_Input_Vtg + Inverter_4_rPV1_Input_Vtg + Inverter_5_rPV1_Input_Vtg + Inverter_6_rPV1_Input_Vtg + Inverter_7_rPV1_Input_Vtg ) / 7', 'F', 'Inverter_7_rPV1_Input_Vtg');
COMMIT;
