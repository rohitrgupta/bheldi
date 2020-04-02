import dbfn

db = dbfn.Db("../ems_parsa.sqlite3")
site = "parsa"
slaves = " where slave in ('Parsa_plc')"
process = " where process in ('Parsa')"

slaves = " where slave in ( select slave from ems_mb_slave " + process + ")"

# sections = " where section in ('ParsaInverterBlock','ParsaBatteryBlock','ParsaMeterBlock','ParsaPlcBlock')"
sections = """ where section in (select section from ems_mb_device where query in
            (select query from ems_mb_query """ + slaves + """ ) ) """
messages = " WHERE msg in (select msg from ems_msg " + process + ")"

q_sel = "select * from ems_function " + process
table = "ems_function"
db.export(q_sel, table, site)

q_sel = "select * from ems_mb_device " + sections
table = "ems_mb_device"
db.export(q_sel, table, site)

q_sel = "select * from ems_mb_field " + sections
table = "ems_mb_field"
db.export(q_sel, table, site)

q_sel = "select * from ems_mb_query " + slaves
table = "ems_mb_query"
db.export(q_sel, table, site)

q_sel = "select * from ems_mb_section " + sections
table = "ems_mb_section"
db.export(q_sel, table, site)

q_sel = "select * from ems_mb_slave " + slaves
table = "ems_mb_slave"
db.export(q_sel, table, site)

q_sel = "select * from ems_msg " + process
table = "ems_msg"
db.export(q_sel, table, site)

q_sel = "select * from ems_msg_field " + messages
table = "ems_msg_field"
db.export(q_sel, table, site)

q_sel = "select * from ems_process " + process
table = "ems_process"
db.export(q_sel, table, site)

q_sel = "select * from ems_process_function " + process
table = "ems_process_function"
db.export(q_sel, table, site)

db.close()

