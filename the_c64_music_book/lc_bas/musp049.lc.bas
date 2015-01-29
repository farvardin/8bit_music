1	rem *** read/data format ii *** jiffy clock ***
5	for m = 54272 to 54296 : poke m,0 : next
7	tm = ti
10	poke 54296,15
20	poke 54277,0 : poke 54278,128
25	read h,l,dr : if h < 0 then poke 54296,0 : end
30	poke 54273,h : poke 54272,l
40	poke 54276,17
50	if ti < tm + dr then 50
55	tm = ti
60	poke 54276,16
70	goto 25
100	data 16,195,25,18,209,25,21,31,45,22,96,15,25,30,15
110	data 28,49,15,31,165,15,33,135,75,-1,-1,-1
