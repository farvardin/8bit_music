 
for i in musicmaster.txt
	do 
		tr '[:upper:]' '[:lower:]' < "$i" > "${i%%.*}".bas
		petcat -w2 -o "${i%%.*}".prg "${i%%.*}".bas 
		echo "${i%%.*}.prg written"
	done
	