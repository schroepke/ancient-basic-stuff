10 rem *** DEFINITION OF A STACK ***
20 dim s(10)
30 t1=10
40 t=0
100 print "TYPE 0 TO PUSH, 1 TO POP:";
110 input x
120 if x=1 then goto 170
130 print "WHAT NUMBER";
140 input n
150 gosub 1000
160 goto 180
170 gosub 1500
180 for i=1 to t
190 print s(i);
200 next i
210 print
220 goto 100
1000 rem *** PUSH ***
1010 if t<t1 then goto 1040
1020 print "STACK IS FULL."
1030 system
1040 t=t+1
1050 s(t)=n
1060 return
1500 rem *** POP ***
1510 if t>0 then goto 1540
1520 print "STACK IS EMPTY."
1530 system
1540 n=s(t)
1550 t=t-1
1560 return
2000 end
