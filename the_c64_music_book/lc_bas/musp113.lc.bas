
1 print "h" : rem *** clear screen *** : rem (todo) h = heart symbol
2 print "*** music by jim vogel ***"
3 print "*** program design ***"
4 print "*** jim vogel and nevin scrimshaw ***"
5 print "*********************************"
6 print "please wait: setting up arrays"
7 print "*********************************"
10 for s = 54272 to 54296 : poke s,0 : next
15 m = 54272
20 dim h(500,2),l(500,2),d(500,2)
30 v(0) = 17 : v(1) = 17 : v(2) = 17
40 rem *** load array ***
100 for k = 0 to 2
110 i = 0
120 read n,dr
130 if dr = 0 then 200
140 wf = v(k) : wx = wf- 1
150 hf% = n/256 : lf% = n - 256*hf%
160 if dr = 1 then h(i,k) = hf% : l(i,k) = lf% : d(i,k) = wf : i = i+1: goto 120
170 for j = 1 to dr-1: h(i,k) = hf% : l(i,k) = lf% : d(i,k) = wf : i = i+1 : next
180 h(i,k) = hf% : l(i,k) = lf% : d(i,k) = wx
190 i = i+1 : goto 120
200 next k
250 rem *** sound settings ***
300 poke m + 5,0  : poke m + 6,255
310 poke m + 12,0 : poke m + 13,255
320 poke m + 19,0 : poke m + 20,255
330 poke m + 24,15
399 rem *** facing the music ***
400 pi = 0 : p2 = 0 : p3 = 0
410 poke m,l(p1,0) : poke m+ 1,h(p1,0)
420 poke m + 7,l(p2,1) : poke m + 8,h(p2,1)
430 poke m + 14,l(p3,2) : poke m + 15,h(p3,2)
440 poke m + 4,d(p1,0) : poke m+11,d(p2,1) : poke m+18,d(p3,2)
445 for t = 1 to 3 : next t
450 p1 = p1 + 1 : p2 = p2+1 : p3 = p3 + 1
455 if d(p1,0) = 0 then 2000
460 if d(p2,1) = 0 then 2500
465 if d(p3,2) = 0 then 3000
470 goto 410
600 rem ** less data! ***
610 data 0,1,1432,2,3406,2,3215,2,2864,2,3215,2,3406,2
620 data 2145,12
630 data 1432,2,3406,2,3215,2,2864,2,3215,2,3406,2
640 data 4291,6,2145,6,0,0
700 data 0,1,0,48,5728,2,6812,2,5103,2,6430,2,5728,2,6812,2
710 data 8583,2,7647,2,6812,2,6430,2,5728,2,5103,2,0,0
800 data 0,1,0,96,17167,40,11457,4,17167,4,15294,4,11457,4,15294,40,11457,4
810 data 15294,4,13625,24,11457,24,12860,40,11457,4,9634,4,8583,44,11457,4
820 data 12860,40,11457,4,8583,4,7647,48,0,0
2000 pi = 1 : goto 460
2500 p2 = 49 : goto 465
3000 p3 = 1 : p2 = 1 : goto 410
