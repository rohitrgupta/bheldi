import argparse
import sqlite3
import json
import datetime


def export_to_file(args):
    connection = sqlite3.connect(args.db)
    cur = connection.cursor()
    q_data = "SELECT * FROM data where id = (SELECT min(id) FROM data)"
    q_del = "DELETE FROM data where id =? "
    cur.execute(q_data)
    rec = cur.fetchall()
    data = json.loads(rec[0][3])
    ts = data["timestamp"]
    date = datetime.datetime.strptime(ts, "%Y-%m-%d %H:%M:%S")
    today = datetime.datetime.today()
    if rec[0][4] != "S" or today - date < datetime.timedelta(days=1):
        print("No data to export",rec[0][4], ts)
        connection.close()
        return
    print(date, today, today - date > datetime.timedelta(days=10))
    f_name = "mqtt_{yyyy}-{mm}-{dd}.csv".format(yyyy=date.year, mm=date.month, dd=date.day)
    fo = open(f_name, "a")
    rec_count = 0
    while True:
        cur.execute(q_data)
        rec = cur.fetchall()
        data = json.loads(rec[0][3])
        ts = data["timestamp"]
        dt = datetime.datetime.strptime(ts, "%Y-%m-%d %H:%M:%S")
        if date.year != dt.year or date.month != dt.month or date.day != dt.day:
            print("Exported:", rec_count, "File:", f_name)
            fo.close()
            connection.commit()
            connection.close()
            break
        rec_count += 1
        fo.write(rec[0][3])
        fo.write("\n")
        cur.execute(q_del, (rec[0][0],))

    connection.close()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("db",
                        help="Database file")

#    parser.add_argument("file",
#                        help="input file")
    args = parser.parse_args()
    export_to_file(args)

