fname=$1
sed 's/\s*,*\s*$//g' $fname > tmp.csv
op=$(echo $fname | cut -d"." -f 1)
opfile="$op.sql"
op="\`$op\`"
columns=$(head --lines=1 tmp.csv | sed 's/,/`,`/g' | tr -d "\r\n")
columns="\`$columns\`"
tail --lines=+2 tmp.csv | while read l ; do
values=$(echo $l | sed 's/,/\",\"/g' | tr -d "\r\n")
values="\"$values\""
echo "INSERT INTO $op($columns) VALUES ($values);"
done > $opfile
rm tmp.csv