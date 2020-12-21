
mkdir prg
mkdir lc_bas

for i in *.txt
	do 
		tr '[:upper:]' '[:lower:]' < "$i" > lc_bas/"${i%%.*}".lc.bas
		petcat -w2 -o prg/"${i%%.*}".prg lc_bas/"${i%%.*}".lc.bas 
		echo "prg/${i%%.*}.prg written"
	done
	
