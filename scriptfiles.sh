# convertir el patron DD/MM/YY a YYYY-MM-DD
sed 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/\([0-9][0-9]\)/20\3-\2-\1/' data.csv > deta1.csv
#convertir el caso D/M/YYYY a YYYY-MM-DD
sed 's/\([0-9]\)\/\([0-9]\)\/\([0-9][0-9][0-9][0-9]\)/\3-0\2-0\1/' deta1.csv > deta2.csv
#convertir n por N
sed 's/n/N/' deta2.csv > deta3.csv
#convertir ;N por ;\N
sed 's/;N/;\\N/' deta3.csv > deta4.csv
#convertir espacio en blanco por /N
sed 's/;;/;\\N;/' deta4.csv > deta5.csv
#convertir decimal , por .
sed 's/,/./g' deta5.csv > deta6.csv
#convertir ; por ,
sed 's/;/,/g' deta6.csv > deta7.csv
#convertir espacio al final por /N
sed -z 's/,\n/,\\N\n/g' deta7.csv > deta8.csv
sed 's/a/A/g' deta8.csv > deta9.csv
sed 's/b/B/g' deta9.csv > deta10.csv
sed 's/c/C/g' deta10.csv > data_final.csv
rm deta*
