50	rem *** locomotive ***
100	m = 54272
110	for z = 54272 to 54296 : poke z,0 : next
120	for j = 1 to 40
130	poke m + 24,15
140	poke m + 5,8
150	poke m + 1,20
160	poke m +4,129
170	for q = 1 to 50 : next q
180	poke m +4,128
190	next j
200	poke m +24,0
