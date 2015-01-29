100 print "h" : rem *** clear screen *** : rem h=heart
110 print "***donald's chromatic chord organ***"
120 print "***by donald kahn & jim vogel***"
125 print "***********************************"
135 print "***press top row keys for voice i***"
145 print "***press 2nd row keys for voice ii***"
155 print "***press 3rd row keys for voice iii***"
160 print "***********************************"
165 print "press f1 to turn off voice i"
170 print
175 print "press f3 to turn off voice ii"
180 print
185 print "press f5 to turn off voice iii"
190 print
195 print "press f7 to turn off all voices"
200 print
205 print "press f2 for triangle waveform"
210 print
220 print "press f4 for sawtooth waveform"
230 print
240 print "press f6 for lower octave"
250 print
260 print "press f8 for lower octave"
270 print
280 print "press space bar to end"
400 for w = 54272 to 54296 : poke w,0 : next
410 z = 54272
420 p = 0
430 dim a(12),b(12),c(12),d(12,3)
440 for n = 0 to 12 : read d(n,0) : read d(n,1) : next
450 for n = 0 to 12 : read d(n,2) : read d(n,3) : next
460 for n = 0 to 12 : read a(n) : next
470 for n = 0 to 12 : read b(n) : next
480 for n = 0 to 12 : read c(n) : next
490 poke z + 24,15
500	poke z + 5,0 : poke z + 6,240
510	poke z + 12,0: poke z + 13,240
520	poke z + 19,0: poke z + 20,240
530	poke z + 4,17: poke z + 11,17 : poke z+ 18,17
540	get m$ : if m$ = "" then 540
550	m = asc(m$)
560	if m = 32 then 900
570	if m = 136 then poke z + 1,0 : poke z,0 : poke z + 8,0 : poke z + 7,0 : poke z+15,0 : poke z+14,0
580	if m = 136 then goto 540
600	if m = 139 then p = 0 : goto 540
610	if m = 140 then p = 2 : goto 540
620	if m = 133 then poke z+ 1,0 : poke z,0 : goto 540
630	if m = 134 then poke z + 8,0 : poke z + 7,0 : goto 540
640	if m = 135 then poke z + 15,0 : poke z+14,0 : goto 540
650	if m = 138 then poke z + 4,33 : poke z+11,33 : poke z +18,33 : goto 540
660	if m = 137 then poke z + 4,17 : poke z+11,17 : poke z+ 18,17 : goto 540
670	i = 0
680	if m = a(i) then poke z + 1,d(i,p): poke z,d(i,p +1): goto 540
690	if m = b(i) then poke z + 8,d(i,p): poke z + 7,d(i,p +1): goto 540
700	if m = c(i) then poke z + 15,d(i,p): poke z + 14,d(i,p +1): goto 540
710	i = i+1
720	if i < = 12 then 680
730	goto 540
900	for l = 54272 to 54296 : poke l,0 : next
1000	data 16,195,17,195,18,209,19,239,21,31,22,96,23,181,25,30,26,156,28,49
1010	data 29,223,31,165,33,135
1020	data 33,135,35,134,37,162,39,223,42,62,44,193,47,107,50,60,53,57,56,99
1030	data 59,190,63,75,67,15
1040	data 95,49,50,51,52,53,54,55,56,57,48,43,45
1050	data 81,87,69,82,84,89,85,73,79,80,64,42,94
1060	data 65,83,68,70,71,72,74,75,76,58,59,61,13
