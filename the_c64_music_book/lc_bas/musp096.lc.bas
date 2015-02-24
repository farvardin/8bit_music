100 m = 54272
110 for z = 54272 to 54299 : poke z,0 : next
120 poke m+14,20: poke m+18,16
130 poke m + 24,143
140 poke m + 6,240: poke m + 4,33
150 n = 5728
160 for t = 1 to 300
170 fq = n + peek(m + 27)* 100
180 hf = int(fq/256): lf = fq-hf*256
190 poke m,lf : poke m + 1 ,hf
200 next
210 poke m+ 24,0
