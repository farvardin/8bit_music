5 rem *** insect speech ***
10 for m = 0 to 24 : poke 54272 + m,0 : next
20 m = 54272
30 poke m + 24,15
40 poke m + 5,16 : poke m + 6,255
50 for z = 1 to 5
60 poke m + 1, rnd(z)*50 + 54
70 poke m + 4,33
80 for k = 1 to 4 : next k
90 poke m + 4,32
100 next z
200 c = c+1 : if c = 25 then 500
210 goto 50
500 poke m + 24,0: end
