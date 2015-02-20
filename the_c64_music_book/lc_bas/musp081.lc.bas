5	rem *** video game effect ***
10	for m = 0 to 24 : poke 54272 + m,0 : next
20	m = 54272
30	poke m + 24,15
40	poke m + 5,136: poke m + 6,240
50	for x = 4 to 255 step 25
60	pokem+1,x
70	poke m +4,33
80	for k = 1 to 10 : next k : next x
90	for z = 255 to 6 step - 25
100	poke m+1,z
110	forj = 1 to 2:next j:next z
200	c = c+1 :if c = 3 then 500
210	goto 50
500	poke m +24,0 : end
