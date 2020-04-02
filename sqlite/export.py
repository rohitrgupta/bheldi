import dbfnModbus
import sqlite3

def select_dict():
    conn = sqlite3.connect("../edge.sqlite3")
    conn.row_factory = sqlite3.Row
        
    sql = '''SELECT * from ems_msg'''

    cur = conn.cursor()
    cur.execute(sql)    
    
    rows = cur.fetchall()
    for row in rows:
        print(dict(row))


def export():
    db = dbfnModbus.DbModbus()
    q_items = "SELECT name from sqlite_master where type = ?"
    q_sql = "SELECT sql from sqlite_master where name = ?"
    tables = db.get_list(q_items, ('table',))
    print(tables)
    
    for t in tables:
        code = db.get_list(q_sql, (t,))
        c_list = code[0].split(",")
        fo = open("tables/" + t + ".sql", "w")
        fo.write(",\n".join(c_list))
        fo.close()
    
    db.close()
    conn = sqlite3.connect("../edge.sqlite3")
    for t in tables:
        sql = '''SELECT * from {table}'''
        cur = conn.cursor()
        cur.execute(sql.format(table=t))    
        head = list(map(lambda x: x[0], cur.description))
        rows = cur.fetchall()
        fo = open("data/" + t + ".csv", "w")
        fo.write(",".join(head) + "\n")
        for r in rows:
            fo.write(",".join([str(x) for x in r]) + "\n")
        fo.close()
    conn.close()

if __name__ == "__main__":
    export()