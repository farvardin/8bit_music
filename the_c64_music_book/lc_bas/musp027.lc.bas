5	rem *** hi low ***
10	for m = 54272 to 54296 : poke m,0 : next
20	print chr$(147)
30	print "enter number then hit return"
40	print "enter 0 to end"
50	input "high fq #";a
60	if a = 0 then end
70	input "low fq #";b
80	poke 54296,15
90	poke 54278,240
100	poke 54273,a : poke 54272,b
110	poke 54276,17
120	for t = 1 to 1000 : next
130	poke 54296,0
140	goto 10
