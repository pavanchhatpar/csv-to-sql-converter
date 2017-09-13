# Excel Sheet(CSV) to SQL
A shell script that converts a csv file (Excel Sheet) to an SQL file that can be imported in a MySQL database

# Purpose
This script was created as a part of Operating Systems' mini project in my Third Year BE. In order to learn usage of various shell commands on Linux, Shell Script was chosen to implement this tool. Later on, it came as a handy tool to convert large amounts of data received for college tech fest events as Excel Sheets to developer friendly SQL files which could be easily used on websites and applications.

# Features and Limitations
 - Works only with .csv files which confine it to be used only on single sheet Excel Files.
 - It assumes the `filename` as `table name` and `first row cells` are taken as `column names`
 - The output filename is same as the input file but with an extension `sql`
 
# Usage
```bash
$ sh csv-sql.sh <filename>.csv
```
# Screenshots
![CSV file](/screenshots/csv.jpg?raw=true "Before conversion")

![SQL file](/screenshots/sql.jpg?raw=true "After conversion")
