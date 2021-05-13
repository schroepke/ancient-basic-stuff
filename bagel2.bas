10 rem *** BEYOND BAGELS ***
20 rem *** G CONTROLS THE MAXIMUM NUMBER OF GUESSES
30 g=20
40 print "WELCOME TO   *** BEYOND BAGELS ***"
50 print
60 print "RULES (1=YES 0=NO)";
70 input x
80 print
90 if x<>1 then goto 310
100 print "   I'LL THINK OF A THREE DIGIT NUMBER (LIKE 532)"
110 print "AND YOU HAVE";g;" TRIES TO GUESS IT.  AFTER YOU TELL ME"
120 print "YOUR GUESS, I'LL PRINT YOUR SCORE FOR THAT GUESS."
130 print
140 print "YOU GET 1 POINT FOR EACH DIGIT THAT'S ALSO IN MY NUMBER,"
150 print "AND ANOTHER POINT FOR EACH CORRECT DIGIT THAT'S ALSO"
160 print "IN THE CORRECT PLACE."
170 print
180 print "IF MY NUMBER IS   532"
190 print "AND YOU GUESS     421"
200 print "YOU GET 1 POINT (FOR THE 2)"
210 print
220 print "IF MY NUMBER IS   689"
230 print "AND YOU GUESS     692"
240 print "YOU GET 3 POINTS (2 BECAUSE OF THE 6, AND"
250 print "THE 9 ADDS THE OTHER POINT"
260 print
270 print "BUT BE CAREFUL!  SOME SCORES (LIKE 3 POINTS)"
280 print "CAN BE MADE IN MORE THAN ONE WAY !!!"
290 print
300 print "HERE WE GO..."
310 dim a(3),b(3)
311 randomize timer
320 a(1)=int(rnd*9)+1
330 a(2)=int(rnd*10)
340 if a(2)=a(1) then goto 330
350 a(3)=int(rnd*10)
360 if a(3)=a(2) then goto 350
370 if a(3)=a(1) then goto 350
380 print "I'VE PICKED MY NUMBER"
390 print
400 for g1=1 to g
410 print
420 print "GUESS #";g1;
430 input x
440 if x>=100 and x<=999 then goto 470
450 print "HINT:  MY NUMBER HAS THREE DIGITS"
460 goto 410
470 p=0
480 for i=1 to 3
490 b(i)=int(x/100)
500 x=10*(x-100*b(i))
510 next i
520 if p=6 then goto 750
530 if b(1)<>b(2) and b(1)<>b(3) and b(2)<>b(3) then goto 560
540 print "HINT:  IN MY NUMBER, ALL THE DIGITS ARE DIFFERENT"
550 goto 410
560 for i=1 to 3
570 for j=1 to 3
580 if b(i)<>a(j) then goto 620
590 p=p+1
600 if i<>j then goto 620
610 p=p+1
620 next j
630 next i
640 if p=6 then goto 750
650 if p<>1 then goto 680
660 print p;" POINT FOR THIS ONE"
670 goto 690
680 print p;" POINTS FOR THIS ONE"
690 next g1
700 print
710 print
720 print "SORRY YOU DIDN'T GUESS IT."
730 print "MY NUMBER WAS ";a(1);a(2);a(3)
740 goto 820
750 print
760 print
770 print "YOU GUESSED IT IN ";g1;" GUESSES !!!";
780 for i=1 to g/2-g1
790 print "";
800 next i
810 print
820 print "PLAY AGAIN (1=YES 0=NO)";
830 input x
840 if x=1 then goto 290
850 print "BYE!"
860 end
