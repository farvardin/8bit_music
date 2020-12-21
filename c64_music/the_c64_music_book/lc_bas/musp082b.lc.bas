10	poke 53280,0 : poke 53281,0
20	print "h" : rem *** clear screen ***
30	for w = 1 to 16
40	read a
50	print
60	print chr$(a);: print "q"
65	rem *** sound ***
70	poke 54296,15
80	poke 54277,0: poke 54278,128
90	poke 54273,28 : poke 54272,49
100	poke 54276,17
110	for t = 1 to 100 : next
120	poke 54276,16
130	next w
135	poke 54296,0 : end
140	rem *** color data ***
150	data 5,28,30,31,129,144
160	data 149,150,151,152,153,154,155
170	data 156,158,159
