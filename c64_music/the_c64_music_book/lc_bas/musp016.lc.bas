5	rem*** pots and pans***
10	for m = 54272 to 54286 : poke m,0 : next
20	poke 54296,15
30	poke 54277,7 : poke 54278,0
40	readh,l,dr
50	if h<0 then 900
60	poke 54287,h : poke 54273,l
70	poke 54276,21
80	for t = 1 to dr : next
90	poke 54276,20
95	for b = 1 to 34 : next
100	goto 30
200	data 18,209,75,21,31,75,23,181,150,28,49,150,28,49,225,31,165,75
210	data 28,49,150,23,181,150,18,209,225,21,31,75,23,181,150,23,181,150
220	data 21,31,150,18,209,150,21,31,450
250	data-1,-1,-1
900	restore : i = i + 1 : if i = 2 then poke 54296,0 : end
910	goto 30
