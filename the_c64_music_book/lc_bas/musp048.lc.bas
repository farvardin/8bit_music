1 rem *** read/data format i ***
5 for m = 54272 to 54296 : poke m,0 : next
10 poke 54296,15
20 poke 54277,0 : poke 54278,128
25 read h,l,dr : if h < 0 then poke 54296,0 : end
30 poke 54273,h : poke 54272,l
40 poke 54276,17
50 for t = 1 to dr : next
60 poke 54276,16
70 goto 25
100 data 16,195,400,18,209,400,21,31,600,22,96,200,25,30,200
110 data 28,49,200,31,165,200,33,135,1000,-1,-1,-1


