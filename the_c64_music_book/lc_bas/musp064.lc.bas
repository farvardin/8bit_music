10	rem *** jazz bass line ***
20	for z = 54272 to 54296 : poke z,0 : next
30	m = 54272
40	poke m + 24,15
50	poke m + 5,9: poke m + 6,15
55	j = j + 1 : if j = 3 then for t = 1 to 1000:next: poke m + 24,0:end
60	read h,l,dr : if h < 0 then 500
70	poke m + 1,h: poke m,l
80	poke m + 4,33
90	for q = 1 to dr : next
110	poke m + 4,32
115	for t = 1 to 300 : next
120	goto 60
200	data 3,244,25,4,180,25,5,71,150,4,180,200
210	data 3,244,25,4,180,25,5,71,150,4,180,100,4,180,100,-1,-1,-1
220	data 5,71,25,6,71,25,7,12,150,6,71,200
230	data 5,71,25,6,71,25,7,12,150,6,71,100,6,71,100,-1,-1,-1
500 c = c + 1 : if c = 1 then restore : goto 60
510 if c = 2 then 60
520 if c = 3 then restore : goto 60
530 if c = 4 then restore : c = 0 : goto 55

1000 rem : was wrongly written 1 instead of -1 line 210


