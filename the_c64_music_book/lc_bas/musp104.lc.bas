5	rem *** 2 dim array ***
10	dimv(20,2)
15	m = 54272 :z = 0: c = 0
20	for s = m to m + 24 : poke s,0 : next
30	poke m +24,15
40	poke m + 5,0: poke m + 6,240
45	rem *** load the array ***
50	readh,l,dr
60	v(z,0) = h : v(z,1) = l : v(z,2) = dr : z = z+ 1
70	if dr = - 1 then goto 90
80	goto 50
85	rem *** play the music ***
90	z = 0
100	tm = ti: if v(z,0) = - 1 then 1000
110	poke m+ 1,v(z,0): poke m,v(z,1)
120	poke m +4,17
130	if ti< tm + v(z,2) then 130
140	pokem + 4,16:z = z+1
150	goto 100
200	data 16,195,8,18,209,8,21,31,8,22,96,8,25,30,8,28,29,8,31,165,8,33,135,24
210	data-1,-1,-1
999	rem *** datacontrol ***
1000	c = c+1
1010	if c = 1 then z = 2
1012	if c = 2 then z = 4
1014	if c = 3 then z = 0
1016	if c = 4 then poke m + 24,0 : end
1020	goto 100
