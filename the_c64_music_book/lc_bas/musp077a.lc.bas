
5	rem *** gliss effect ***
10	for m = 0 to 24 : poke 54272 + m,0 : next
20	m = 54272
30	poke m + 24,15
40	poke m + 5,136 : poke m + 6,240
50	for x = 255 to 4 step -2
60	poke m + 1,x
70	poke m + 4,17
80	for k = 1 to 4 : next k : next x
200	c = c + 1 :if c = 3 then 500
210	goto 50
500	poke m + 24,0: end
