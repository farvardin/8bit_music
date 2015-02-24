10	poke 53280,0: poke 53281,0
20	print "k" : rem *** clear screen ***
30	for w = 1 to 16
40	read a,b,c
50	print
60	print chr$(a);: print "q"
65	rem *** sound ***
70	poke 54296,15
80	poke 54277,0 : poke 54278,128
90	poke 54273,b : poke 54272,c
100	poke 54276,17
110	for t = 1 to 100 : next
120	poke 54276,16
130	next
140	rem*** color & note data***
150	data 5,33,135,28,37,162,30,42,62,31,44,193,129,50,60,144,56,99
160 data 149,63,75,150,67,15
170 data 151,67,15,152,63,75,153,56,99,154,50,60,155,44,193,156,42,62
180 data 158,37,162,159,33,135
