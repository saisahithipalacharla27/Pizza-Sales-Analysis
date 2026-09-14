import csv
from pathlib import Path


# Input and output files are kept in the project's data folder
input_path = Path("../data/pizza_sales_raw.csv")
output_path = Path("../data/pizza_sales.csv")


with open(input_path, mode="r", encoding="utf-8-sig", newline="") as infile, \
     open(output_path, mode="w", encoding="utf-8", newline="") as outfile:

    reader = csv.reader(infile)
    writer = csv.writer(outfile, delimiter="|")

    for row in reader:
        writer.writerow(row)


print("Successfully converted CSV delimiter to pipe (|).")