05 rem http://silicium.org/forum/viewtopic.php?f=25&t=42741&sid=6376870cbcbff002bc21c0c95af52197
10 graphic 1,1
20 dr=3.1415/180
30 for r=5 to 330 step 10
40 for t=0 to 360 step 10
50 x=r*cos(t*dr)*.3
60 y=r*sin(r*dr)*.3
70 z=r*sin(t*dr)*.3
80 xp=x+(cos(15*dr)*z)
90 yp=y+(sin(15*dr)*z)
100 xp=160+xp
110 yp=60-yp
120 draw 1,xp,yp
130 next:next
140 input a$
150 graphic 0
