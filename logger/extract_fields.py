import argparse
import json


def extract(args):
    # split the fields
    # add timestam to the fields
    fields = ["timestamp"] + args.fields.split(",")
    print(fields)
    fi = open(args.source)
    fo = open(args.out, 'w')
    fo.write(",".join(fields) + "\n")
    row_no = 0
    for r in fi.readlines():
        if r[0] != "{":
            continue
        row_no += 1
        print(row_no)
        data = json.loads(r)
        data_write = []
        for f in fields:
            if f in data:
                data_write.append(str(data[f]))
            else:
                print("Not present", f)
                data_write.append("")
        fo.write(",".join(data_write) + "\n")

    # open source file
    # for each row
        # convert each record to a dict
        # make a list of values to the list
        # write list to the file
    fi.close()
    fo.close()

if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument("source", help="json file")
    parser.add_argument("out", help="csv file")
    parser.add_argument("fields", help="fields")
    args = parser.parse_args()
    extract(args)
