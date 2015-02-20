5	rem *** flight of the bumble bee ***
10	for m = 54272 to 54296 : poke m,0 : next
20	wf(0) = 33 : wf(l) = 17 : wf(2) = 65 : wf(3) = 129
30	poke 54296,15
40	poke 54274,9 : poke 54275,255
50	poke 54277,137 : poke 54278,128
60	readh,l
70	if h<0 then 900
80	poke 54273,h : poke 54272,l
90	poke 54276,wf(i)
100	for t = 1 to 50 : next
110	goto 60
200	data 28,49,26,156,25,30,23,181,22,96
210	data 29,223,28,49,26,156,28,49
220	data 26,156,25,30,23,181,22,96
230	data 23,181,25,30,26,156, -1,-1
900	poke 54276,0
910	restore : i = i + 1 : if i = 4 then end
920	goto 60
