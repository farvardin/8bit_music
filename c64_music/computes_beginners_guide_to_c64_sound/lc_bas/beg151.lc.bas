1 rem program 4-11. synchronization
5 rem — initialize sound registers — :rem 0
6 rem :rem 26
10 for r=54272 to 54296 :poker, 0:next : rem 24
11 poke 54296,15 :rem 45
12 poke 54275,8:poke 54277,0:poke 54278,240 :rem 0
13 poke 54287,9 :rem 2
14 rem :rem 73
15 rem — set sync function — :rem 141
16 rem :rem 75
17 poke 54276,19 :rem 53
21 rem :rem 71
23 rem — sweep scales w/sync — :rem 255
24 rem :rem 74
30 for r=0 to 255:poke 54273,r: next :rem 173
40 poke 54276,16:poke 54296,0 :rem 253
