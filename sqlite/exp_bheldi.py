import dbfn

db = dbfn.Db("../ems.sqlite3")
site = "bheldi"
process = " where process in ('Bheldi')"
#########################

slaves = " where slave in ( select slave from ems_mb_slave " + process + ")"

messages = " WHERE msg in (select msg from ems_msg " + process + ")"

sections = """ where section in (select section from ems_mb_device where query in
            (select query from ems_mb_query """ + slaves + """ ) ) """


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

