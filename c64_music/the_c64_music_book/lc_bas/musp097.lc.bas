100	m = 54272
110	for z = 54272 to 54300 : poke z,0 : next
120	poke m + 24,143
130	poke m + 19,255
140	poke m + 6,240 : poke m + 4,33
145	poke m + 18,1
150	fort = 1 to 300
160	n = 5728
170	fq = n + peek(m + 28)* 10
180	hf = int(fq/256): lf = fq-hf*256
190	poke m,lf : poke m + 1 ,hf
200	next
210	poke m +24,0
