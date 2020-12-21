1 rem program 4" 10. ring modulation—sweeping both voices
5 rem — initialize sound registers — :rem 0
6 rem :rem 26
10 for r=54272 to 54296:poker,0:next :rem 24
11 poke 54296,15 :rem 45
12 poke 54277,0:poke 54278,240 :rem 44
14 rem :rem 73
15 rem — turn on ring mod — :rem 244
16 rem :rem 75
17 poke 54276,21 :rem 46
18 rem :rem 77
19 rem —  sweep both  voices — :rem 124
20 rem :rem 70
30 for r=0 to 255:poke 54273,r:poke 54287,255-r:next :rem 103
40 poke 54276,16:poke 54296,0 :rem 253
