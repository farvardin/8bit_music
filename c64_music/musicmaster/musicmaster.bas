
200 goto460
210 :
220 :
230 rem slide subroutine
240 ifra<0thenra=r
250 rb=r:t=s+v*z7:pokevn,v*z7:pokenl,fl(ra
    ):pokenh,fh(ra):syss2:poket+z4,wv
    +z1
260 fori=ratorbstepsgn(rb-ra)/2:poket,fl(i
    ):poket+1,fh(i):next
270 ifpeek(ik)=jandpeek(ik)-64then270
280 ra=rb:poket+z4,wv+p:v=v+mn*(z1+z3*(v=z
    2)):return
290 :
300 rem chord subroutine
310 pokebf,z0:fori=zotoz2:a=r+c(c1,c2,i):pokevn,i*z7:pokenl,fl(a)
320 pokenh,fh(a):syss2:next:pokes+z4,wv+z1:pokes+11,wv+zi:pokes+18,wv+z1
330 ifpeek(ik)=jandpeek(ik)-64then330
340 pokes+z4,wv+p:pokes+11,wv+p:pokes+18,wv+p:return
350 :
360 rem polyphonic subroutine
370 a=peek(ik):syss1:j=peek(et):ifj=z0ora=zsthenreturn
380 fori=zitoj:r=k(peek(et+i))+oc:ifr=octhennext:return
390 t(i)=v*z7:pokevn,t(i):pokenl,fl(r):pokenh,fh(r):syss2
400 ifmnthenv=v+zi:ifv=z3thenv=z0
410 next:fori=z1toj:pokes+t(i)+z4,wv+z1:next
420 syss1:ifj=peek(et)anda=peek(ik)then420
430 fori=z1toj:pokes+t(i)+z4,wv+p:next:goto 370
440 :
450 :
460 rem initialize variables
470 print"{clear}"chr$(142);chr$(8);:poke53280,0:poke53281,0:poke788,52:rem ignore run/stop
480 fori=1to39:sp$=sp$+" ":ln$=ln$+"#":next
490 print"{wht}octave=5 voice=1 :c:s:m:{rev}v{off}:{rev}p{off}: volume=10 {right}"ln$
500 poke214,23:print:printtab(15)"musicmaster{home}{02 down)
510 a$="please stand by(wht}":poke214,21:print:printtab(13)"(grn}"a$:s=54272:gosub1580
520 dimfl(134),fh(134),k(255),c(8,2,2):oc=48:vl=10:mn=1:ll=1:ra=-1
530 z1=1:z2=2:z3=3:z4=4:z7=7:zs=64:ff=255:hb=256
540 ik=197:bf=198:vn=251:nl=900:nh=901:et=829:s1=49152:s2=49408:fori=z1to41
550 k(asc(mid$("q2w3er5t6y7ui9o0p@-*£↑{home}czsxdcvgbhnjm,l.:/",i)))=i:next
555 rem k(asc(mid$("q2w3er5t6y7ui9o0p@-*£↑{home}{c}zsxdcvgbhnjm,l.:/",i)))=i:next
560 printtab(13)"{cyn}(up}"a$:r=5.8:a=10787.4138:j=z2↑(-z1/12)
570 fori=94to0step-1:fh(i)=int(a*r/hb):fl(i)=a*r-hb*fh(i):a=a*j:next
580 printtab(13)"(up}"a$:gosub1310
590 :
600 rem read all data
610 fori=z0to8:ford=z0toz2:readc(i,j,0),c(i,j,1),c(i,j,2):next:readc$(i):next
620 readnm$(0),nm$(1),nm$(2):fori=1to8:readad(i),sr(i),wv(i),pl(i),ph(i):next
630 forr=1to2:readi,j:fora=itoj:readin:pokea,in:next:next
640 printtab(9)"{down}(use control-x to exit)":i=1:gosub860
650 :
660 :
670 rem nucleus
680 waitbf,ff:j=peek(ik):geta$:r=k(asc(a$)+oc:ifr=octhengosub800:goto680
690 ifslthengosub240:goto680
700 ifchthengosub310:goto680
710 ifllthengosub370:goto680
720 t=s+v*z7:pokevn,v*z7:pokenl,fl(r):poke nh,fh(r):syss2:poket+z4,wv+z1
730 ifmnthenv=v+zi:ifv=z3thenv=z0
740 ifpeek(ik)=jandpeek(ik)-64then740
750 poket+z4,wv+p:waitbf,ff:geta$:j=peek(ik):r=k(asc(a$))+oc:ifr-octhen720
760 gosub800:goto680
770 :
780 :
790 rem parameter functions
800 ifch=0then830
810 fori=0t02:ifa$=mid$("[])",i+1,1)thenc2=i:print"{home}{down}"tab(23)nm$(i):return
820 next:a=asc(a$):ifa>32anda<42thenci=a-33:print"{home}{down}"tab(11)c$(c1):return
830 fori=1to8:ifa$<>mid$("{blk}{wht}{red}{cyn}(pur}{grn}{blu}{yel}",i,1)then next:goto850
840 oc=12*(i-z1):print"{home}"tab(7)mid$(str$(i),2):return
850 fori=1t08:ifa$<>mid$("{org}{brn}{ltr}{gy1}{gy2}{ltg}{ltb}{gy3}",i,1)then next:goto880
860 poke902,pl(i):poke903,ph(i):wv=wv(i):poke904,wv:poke905,ad(i):poke906,sr(i)
870 print"{home}"tab(16)mid$(str$(i),2):return
880 ifa$<>"{fl}"anda$<>"{f3}"then930
890 vl=vl-(vl<15anda$="{f1}")+(vl>0anda$="{f3}"):pokes+24,vl
900 print"{home}"tab(37)right$("0"+mid$(str$(vl),2),2):return
910 :
920 rem style functions
930 ifa$="{f4}"thenp=1-p:poke1047,13+128*p:goto1580
940 ifa$="{f6}"thenmn=1-mn:poke1049,22+128*mn:goto1580
950 ifa$="{f8}"thenll=1-ll:poke1051,16+128*ll:return
960 ifa$="{f7}"thensl=1-sl:ra=-1:poke1045,19+128*sl:ch=1:goto990
970 ifa$<>"{f5}"then1010
980 poke1045,19:sl=0
990 ch=1-ch:poke1043,3+128*ch:ifch=0thenpr
    int"{home}{down}"ln$:printsp$:ret
    urn
1000 print"{home}{down}"sp$"{right}{up}chor
    d type:"c$(cl)tab(23)nm$(c2)" inv
    ersion{right}"ln$:return
1010 ifa$=" "thengosub1580:ra=-1:pokebf,z0:
    return
1020 ifa$="{x}"thengosub1580:print"{clear}"
    ;:poke788,49:end
1030 ifa$<>"{f2}"thenreturn
1040 :
1050 :
1060 rem display waveform parameters
1070 gosub1470:poke214,13:print
1080 print"voice to be defined (1-8)";:j=1:
    gosub1500
1090 ifin<1orin>sthengosub1470:got01400
1100 i=in:printtab(31)"att:"mid$(str$(int(a
    d(i)/16)),2)
1110 printtab(31)"dec:"mid$(str$(ad(i)and15
    ),2)
1120 printtab(31)"sus:"mid$(str$(int(sr(i)/
    16)),2)
1130 printtab(31)"rel:"mid$(str$(sr(i)and15
    ),2)
1140 printtab(31)"wvf:{cyn}"mid$("sawtripul
    nse",3*log(wv(i))/log(2)-11,3)"{wht}
1150 ifwv(i)=64thenprinttab(31)"pls:"mid$(s
    tr$(ph(i)*hb+pl(i)),2)
1160 :
1170 rem define a new waveform
1180 poke214,14:print:print"attack rate (0-
    15)";:j=2:gosub1500:iferthen1070
1190 ad=in:print"decay rate (0-15)";:gosub1
    500:iferthen1070
1200 ad=ad*16orin:print"sustain level (0-15
    )";:gosub1500:iferthen1070
1210 sr=in:print"release rate (0-15)";:gosu
    b1500:iferthen1070
1220 sr=sr*16orin:print"{cyn}s{wht}aw {cyn}
    t(wht)riangle {cyn}p{wht}ulse {
    cyn}n{wht}oise";:j=1:gosub1500
1230 forj=1to4:ifin$<>mid$("stpn",j,1)thenn
    ext:goto1070
1240 wf=2↑(j+3):ifwf<>64then1260
1250 print"pulse rate (0-4095)";:j=4:gosub1
    500:pu=in:ifin<0orin>4095then1070
1260 wv(i)=wf:pl(i)=pu-hb*int(pu/hb):ph(i)=
    int(pu/hb):ad(i)=ad:sr(i)=sr
1270 gosub1470:gosub1410:got0860
1280 :
1290 :
1300 rem display keyboards
1310 pokes+24,vl:print"{home}{03 down}"tab(
    9)"'{rev} {right} {right} ] {
    right} {right} {right} ] {right} ~
    {right} ] {right} {right} {right}
     "
1320 print"  low    '{rev} {off}2{rev} {
    off}3{rev} ] {off}5{rev} {off}6{
    rev} {off}7{rev) ] {off}9{rev} {
    off}0{rev} ] (off}-{rev} {off)£{
    rev} s "
1330 print"keyboard '{rev} ] ] ] ] ] ] ] ]
    ] ] ] ] ] "
1340 printtab(9)"'{rev}q]w]e]r]t]y]u]i]o]p]
    @]*]↑r] "
1350 printtab(13)"{down}*{rev} {right) {
    right} ] {right} {right} {right) ~
    ] {right} {right} {off}4"
1360 print" high        *{rev) {off}s{rev}
    {off}d{rev} ] {off}g{rev} {off}h{
    rev} {off}j{rev} ] {off}l{rev} {
    off}:{rev} {off}4"
1370 print"keyboard     '{rev} ] ] ] ] ] ]
    ] ] ] {off}4"
1380 printtab(13)"_*{rev}z]x]c]v]b]n]m],].]/
    {off}4"
1390 :
1400 rem display function menu
1410 poke214,13:print:print"f1 -- louder
      f2 -- define waveform
1420 print"{down}f3 -- softer     f4 -- {
    cyn}maintain{wht)
1430 print"{down)f5 -- {cyn}chords{wht)
     f6 -- {cyn}multivoice(wht)
1440 print"{down}f7 -- {cyn}slides{wht}
     f8 -- {cyn}polyphonic{wht}":return
1450 :
1460 rem clear display area
1470 poke214,12:print:forj=1to11:printsp$:n
    ext:return
1480 :
1490 rem input subroutine
1500 in$="":print"? ";
1510 print"{rev} {off}{left}";:waitbf,ff:
    geta$:ifa$="{x}"then1020
1520 a=asc(a$):ifa=13thenprint" ":in=val(in
    $):er=(in<0orin>15)orin$="":return
1530 ifa=20andlen(in$)thenprint" {02 left}
    {left}";:in$=left$(in$,len(in$)-1)
1540 if(aand127)<35orlen(in$)=jthen1510
1550 printa$;:in$=in$+a$:goto1510
1560 :
1570 rem clear music chip
1580 fori=4to18step7:pokes+i,0:next:fori=0t
    o23:pokes+i,0:next:return
1590 :
1600 :
1610 rem chord data
1620 data,4,7,,3,8,,5,9,"major      ",,3,7,,
    4,9,,5,8,"minor     "
1630 data,3,6,,3,9,,6,9,"diminished",,4,8,,
    4,8,,4,8,"augmented "
1640 data,4,11,,4,11,,4,11,"major 7th ",,3,
    10,,3,10,,3,10,"minor 7th "
1650 data,4,10,,4,10,,4,10,"domin 7th",4,7,
    9,4,7,9,4,7,9,"major 6th "
1660 data3,7,9,3,7,9,3,7,9,"minor 6th","  r
    oot","  first",second
1670 :
1680 rem waveform parameter data
1690 data,249,16,,,,249,32,,,,249,64,160,15
    ,,249,128,,,,240,16,,,204,204,16,,
1700 data,252,64,200,,192,240,32,,
1710 :
1720 rem multi-input assembly code
1730 data49152,49294,120,169,,141,61,3,170,
    169,254,133,252,165,252,141,,220,173
1740 data1,220,157,143,192,232,56,38,252,17
    6,239,162,,160,,189,143,192,42,176
1750 data29,72,132,253,138,10,10,10,5,253,1
    68,185,79,192,238,61,3,172,61,3,153
1760 data61,3,104,192,3,240,12,164,253,200,
    192,8,208,219,232,224,8,208,209,88
1770 data96,17,135,134,133,136,29,13,20,0,6
    9,83,90,52,65,87,51,88,84,70,67,54
1780 data68,82,53,86,85,72,66,56,71,89,55,7
    8,79,75,77,48,74,73,57,44,64,58,46
1790 data45,76,80,43,47,94,61,1,19,59,42,92
    ,3,81,2,32,50,4,95,49
1800 :
1810 rem musicloader assembly code
1820 data49408,49454,169,212,133,252,169,,1
    60,6,145,251,136,145,251,170,169,8
1830 data136,145,251,138,145,251,136,192,1,
    208,249,188,41,193,185,132,3,145,
    251
1840 data232,224,6,208,243,96,2,3,,1,6,5 
