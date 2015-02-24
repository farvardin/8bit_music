4	print "k" : rem ** clear screen ***
5	rem *** videogame effect ***
10	for m = 0 to 24 : poke 54272 + m,0 : next
20	m = 54272
30	poke m +24,15
40	poke m +5,136: poke m + 6,240
50	for x = 5 to 255 step 20
60	poke m+1,x
70	poke m + 4,33
80	for k = 1 to 15 : next k : next x
90	for z = 255 to 6 step - 20
100	poke m+1,z
110	for j = 1 to 12 : next j : next z
200	c = c+1 :if c = 5 then 500
205	poke 53281,2 : for t = 1 to 75 : next
206	poke 53281,11
210	goto 50
500	print"*** 25 points*** try again"
510	for t = 1 to 100 : next : poke m + 24,0 : end
