5  for z = 54272 to 54296 : poke z,0 : next
10  m = 54272 : poke m + 24,15
30  poke m + 5,168: poke m + 6,169
40  poke m+12,88: poke m+13,89
50  poke m+19,88: poke m +20,89
60  read a,b,c,d,e,f,g
70  if a<0 then poke m + 24,0: end
80  poke m+1,a: poke m + 0,b
90  poke m + 8,c: poke m + 7,d
100  poke m+15,e: poke m+14,f
110  poke m + 4,17 : poke m + 11,33 : poke m + 18,65
120 poke m+16,128: poke m+17,0
130 for z = 1 to g : next
140 poke m + 4,16 : poke m+ 11,32 : poke m+ 18,64
150 goto 60
200 data 15,210,0,0,0,0,2000
210 data 15,210,21,31,0,0,2000
230 data 15,210,21,31,23,181,2000
240 data 28,49,21,31,23,181,2000
250 data 28,49,37,162,23,181,2000
260 data 28,49,37,162,42,62,2000
270 data 28,49,21,31,31,165,3000
800 data-1,-1,-1,-1,-1,-1,-1
