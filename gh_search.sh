#makes a list out of a query: $2 - n - print out 2 - n chunks separated 
grep xylan * | awk  '{print $2,$3,$4,$5,$6,$7,$8}'| sort | uniq > list.txt 
 
# sed thriugh the list and print out hte first chunk before ".faa"
while read p; do
  grep "$p" ** | sed -E 's/(.*).faa.*/\1/' > ../GH/"${p/\//-}".csv 
done <list.txt

# cleaning
for file in *csv; do echo mv "${file}" "${file/,/-}"; done
for file in *csv; do echo mv "${file}" "${file/()/-}"; done
for file in *csv; do echo mv "${file}" "${file/\)/}"; done
for file in *csv; do echo mv "${file}" "${file/" "/-}"; done
