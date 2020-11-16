# -*- coding: utf-8 -*-
import csv
from random import randint, choice


if __name__ == "__main__":

    order_ids = []
    item_ids = []

    with open('raw_orders.csv') as csv_file:
        reader = csv.reader(csv_file, delimiter=',')
        next(reader, None)  # skip the header
        for row in reader:
            order_ids.append(row[0])

    with open('raw_items.csv') as csv_file:
        reader = csv.reader(csv_file, delimiter=',')
        next(reader, None)  # skip the header
        for row in reader:
            item_ids.append(row[0])

    order_item_id = 1
    for order_id in order_ids:
        for x in range(0, randint(1, 10)):
            item_id = choice(item_ids)
            print(f"{order_item_id},{order_id},{item_id}")
            order_item_id += 1
