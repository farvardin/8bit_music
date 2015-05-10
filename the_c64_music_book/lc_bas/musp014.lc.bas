5	rem *** filters ***
10	for m = 54272 to 54296 : poke m,0 : next
15	poke 54295,v(i): poke 54296,f(i)
16	poke 54293,lc(i): poke 54294,hc(i)
20	v(0) = 0 : v(l) = 1 : v(2) = 1 : v(3) = 1 : rem 54295
30	f(0) = 15 : f(l) = 31 : f(2) = 47 : f(3) = 79
40	lc(0) = 0 : lc(l) = 0 : lc(2) = 5 : lc(3) = 0
50	hc(0) = 0 : hc(l) = 100 : hc(2) = 135 : hc(3) = 110
60	poke 54295,v(i): poke 54296,f(i)
70	poke 54293,lc(i): poke 54294,hc(i)
80	poke 54277,0: poke 54278,128
90	poke 54273,11 : poke 54272,218
100	poke 54276,33
110	for dr = 1 to 2500 : next
120	poke 54276,32
130	i = 1 +1 : if i = 4 then poke 54296,0 : end
140	goto 60
