10 dim a(100,2)
11 randomize timer
100 rem *** TALK TO HUMAN ***
110 print "HELLO, HOW MANY VALUES ";
120 input n
130 print
140 a(n+1,1)=0
150 a(n+1,2)=0
200 rem *** GENERATE RANDOM VALUES ***
210 for i=1 to n
220 a(i,1)=rnd
230 j=n+1
300 rem *** LOOP TO FIND PLACE TO INSERT ***
310 k=a(j,2)
320 if k=0 then goto 400
330 if a(k,1)>a(i,1) then goto 400
340 j=k
350 goto 300
400 rem *** INSERT IN LIST ***
410 a(i,2)=k
420 a(j,2)=i
430 next i
500 rem *** PRINT THE ARRAY ***
510 print "ORIGINAL ARRAY :"
520 print
530 print "ADDRESS","VALUE","POINTER"
540 print
550 for i=1 to n
560 print i,a(i,1),a(i,2)
570 next i
580 print
600 rem *** PRINT THE LIST ***
610 print
620 print "SORTED LIST :"
630 print
640 print "ADDRESS","VALUE","POINTER"
650 print
660 j=n+1
700 rem *** LOOP TO PRINT LIST ***
710 k=a(j,2)
720 if k=0 then goto 800
730 print k,a(k,1),a(k,2)
740 j=k
750 goto 700
800 rem *** SAY BYE BYE ***
810 print
820 print "BYE BYE HUMAN !!!"
830 print
840 end

