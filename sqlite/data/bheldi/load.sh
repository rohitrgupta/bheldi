echo "Load ems_function"
sqlite3 ../../../ems.sqlite3 ".read ems_function.sql"
echo "Load ems_mb_device"
sqlite3 ../../../ems.sqlite3 ".read ems_mb_device.sql"
echo "Load ems_mb_field"
sqlite3 ../../../ems.sqlite3 ".read ems_mb_field.sql"
echo "Load ems_mb_query"
sqlite3 ../../../ems.sqlite3 ".read ems_mb_query.sql"
echo "Load ems_mb_block"
sqlite3 ../../../ems.sqlite3 ".read ems_mb_section.sql"
echo "Load ems_mb_slave"
sqlite3 ../../../ems.sqlite3 ".read ems_mb_slave.sql"
echo "Load ems_msg"
sqlite3 ../../../ems.sqlite3 ".read ems_msg.sql"
echo "Load ems_msg_field"
sqlite3 ../../../ems.sqlite3 ".read ems_msg_field.sql"
echo "Load ems_process"
sqlite3 ../../../ems.sqlite3 ".read ems_process.sql"
