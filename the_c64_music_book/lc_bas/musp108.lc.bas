5	rem *** musette *** ii *** j.s.bach
10	dim v(200,2)
15	wf(0) = 16 : wf(1) = 64
20	m = 54272 : c = 0
25	for s = 54272 to 54296 : poke s,0 : next
30	poke m + 2,25: poke m +3,8
35	poke m +24,15
40	poke m + 6,255
45	rem *** load the array ***
50	readh,l,dr
55	v(z,0) = h : v(z,1) = l : v(z,2) = dr : z = z+1
60	if dr = 0 then goto 80 : rem *** end loading ***
70	goto 50
75	j = j+1:if j = 2 then poke 54296,0 : end
80	z = 0
85	if v(z,0) = - 1 then 1000
90	tm = ti
95	rem *** play the music ***
100	poke m+1,v(z,0): poke m,v(z,1)
110	pokem + 4,wf(1)+1
120	if ti< tm + v(z,2) then 120
130	poke m + 4,wf(1): z = z+1
150	goto 85
200	data 67,15,28,59,190,7,56,99,7,50,60,7,44,193,7,-1,-1,-1
210	data 28,49,7,29,223,7,33,135,14,29,223,14,28,49,14, -1,-1,-1
220	data 25,30,14,33,135,14,28,49,14,22,96,14,-1,-1,-1
230	data 25,30,14,33,135,18,22,96,36, -1, - 1, -1,0,0,0
1000	c = c + 1 : z = 0 : i = 0
1010	if c = 2 then z = 6 :i = 1 : poke m + 5,8 : poke m + 6,15
1011	if c = 3 then z = 12 :i = 1
1012	if c = 4 then z = 0 :i = 0 : poke m + 6,255
1013	if c = 5 then z = 0
1015	if c = 6 then z = 6 :i = 1 : poke m + 5,8:poke m + 6,15
1016	if c = 7 then z = 17  : i = 1
1017	if c = 8 then z = 0 : c = 0 : poke m + 6,255 : goto 75
1040	goto 85
