5	rem *** hi low pulse ***
10	for m = 54272 to 54296 : poke m,0 : next
20	print chr$(147)
30	print "enter number then hit return"
40	print "enter (- 1) to end"
50	input "high pw # (0-15)";a
60	if a = - 1 then end
70	input "low pw # (0 - 255)";b
80	poke 54274,b : poke 54275,a
90	poke 54296,15
100	poke 54273,28 : poke 54272,49
110	poke 54278,240
120	poke 54276,65
130	for t = 1 to 1000 : next
140	poke 54276,64
150	poke 54296,0
160	goto 20
