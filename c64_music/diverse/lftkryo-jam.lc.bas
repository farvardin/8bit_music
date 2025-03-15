00000 rem https://github.com/mikerofone/c64stuff/blob/main/lftkryo-jam/src/main.bas
00001 init=peek(194*256):ifinit=40goto10
00002 print "precomputing pitch tables..."
00003 f=40:fori=0to116
00004 poke194*256+i,fand255
00005 poke195*256+i,f/256
00006 f=f*1.0595: next
00010 print "loading program..."
00020 readv:ifv>=0thenpokea,v:a=a+1:goto20
00021 ifv<-1thena=-v*256:goto20
00030 print"{clr}list80-89"
00080 rem +---+---+---+---+---+---+---+---
00081 rem q   :   :   r   q   :   :   m o
00082 rem t vt:rqmo t xvtq:m yxvtq:m tq r
00083 rem am ama mht hth tjv jvj vfr frf r
00084 rem
00085 rem   b d   g i k   n p   s u w   z
00086 rem  a c e f h j l m o q r t v x y
00090 sys192*256
00099 list80-89
00100 data-212
00110 data0,0,0,0,0,0,239
00120 data0,0,0,4,0,0,224
00130 data0,0,0,0,0,128,232
00140 data0,0,0,15
00200 data-192
00210 data169,127,141,13,220
00220 data169,0,141,20,3
00230 data169,193,141,21,3
00240 data169,1,141,26,208,141,18,208
00250 data169,33,141,4,212
00290 data96
00300 data-193
00310 data169,1,141,32,208,141,25,208
00320 data173,162,0,74,74,74,168
00324 data169,14,153,86,216,141,118,216
00325 data169,1,153,87,216
00330 data185,127,4,72
00331 data185,167,4,72
00332 data185,207,4
00340 data162,14,32,0,196
00341 data104,162,7,32,0,196
00342 data104,162,0,32,0,196
00390 data169,14,141,32,208,76,49,234
00400 data-196
00405 data201,32,144,3,76,0,197
00410 data125,0,198,168
00430 data185,0,194,157,0,212
00440 data185,0,195,157,1,212
00450 data189,1,198,157,4,212
00490 data96
00500 data-197
00550 data189,2,198,157,4,212
00560 data16,3,157,1,212
00590 data96
00600 data-198
00610 data82,17,16,0,0,0,0
00620 data70,65,64,0,0,0,0
00630 data46,33,128,0,0,0,0
00999 data-1
01000 rem just edit lines 81 to 83 to get notes!