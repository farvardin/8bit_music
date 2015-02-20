
5 rem *** phaser effect ***
10 for m = 0 to 24 : poke 54272 + m,0 : next
20 m = 54272
30 poke m + 24,15
40 poke m + 5,136 : poke m + 6,255
50 poke m + 4,17
60 for k = 1 to 15
70 for z = 250 to 0 step - 20
80 pokem + 1,z
90 next z: next k
100 poke m + 4,16
500 poke m + 24,0: end
