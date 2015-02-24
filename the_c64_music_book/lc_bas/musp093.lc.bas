1 rem *** filter setting ***
5 for m = 54272 to 54296 : poke m,0 : next
10 poke 54295,129 : poke 54293,0 : poke 54294,100
15 poke 54296,31
20	poke 54277,0 : poke 54278,128
25	read h,l : if h < 0 then end
30	poke 54273,h : poke 54272,l
40	poke 54276,33
50	for t = 1 to 900 : next
60	poke 54276,32
70	goto 25
100	data 16,195,18,209,21,31,22,96,25,30
110	data 28,49,31,165,33,135, -1,-1
