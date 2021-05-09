10 rem *** BAGELS
20 rem *** MODIFIED BY FRED MOORE FOR
30 rem *** PEOPLES COMPUTER COMPANY
40 dim n(3),a(3)
50 rem *** INSTRUCTIONS
60 print "WANT THE RULES (1=YES,0=NO)";
70 input r
80 if r<>1 then goto 150
90 print
100 print "I AM THINKING OF A THREE DIGIT NUMBER (NO DIGITS THE SAME)."
110 print "TRY TO GUESS MY NUMBER. AFTER EACH GUESS I WILL PRINT:"
120 print "   'FERMI'  FOR EACH CORRECT DIGIT IN THE CORRECT PLACE,"
130 print "   'PICO'   FOR EACH CORRECT DIGIT IN THE WRONG PLACE, OR"
140 print "   'BAGELS' IF NO DIGIT IS CORRECT."
150 rem *** SELECT NUMBER AT RANDOM
151 randomize timer
160 n(3)=int(rnd*9+1)
170 n(2)=int(rnd*10)
180 if n(2)=n(3) then goto 170
190 n(1)=int(rnd*10)
200 if n(1)=n(2) then goto 190
210 if n(1)=n(3) then goto 190
220 print
230 print "OK, I HAVE A NUMBER."
240 g=0
250 rem *** A GUESS
260 print
270 print
280 print "YOUR GUESS";
290 input x
300 g=g+1
310 a(3)=int(x/100)
320 a(2)=int(x/10)-a(3)*10
330 a(1)=x-int(x/10)*10
340 if a(3)>9 then goto 410
350 if a(3)<1 then goto 410
360 if int(x)<>x then goto 410
370 if a(1)=a(2) then goto 410
380 if a(2)=a(3) then goto 410
390 if a(1)=a(3) then goto 410
400 goto 440
410 print "   PICK A THREE DIGIT NUMBER FROM 102 TO 987"
420 print "   HINT: IN MY NUMBER ALL THE DIGITS ARE DIFFERENT"
430 goto 270
440 rem *** COMPARE GUESS WITH SELECTED NUMBER
450 f=0:p=0
460 for i=1 to 3
470 for j=1 to 3
480 if a(i)=n(j) then goto 540
490 next j
500 next i
510 if f+p<>0 then goto 590
520 print "BAGELS";
530 goto 260
540 if i=j then goto 570
550 p=p+1
560 goto 490
570 f=f+1
580 goto 490
590 if p=0 then goto 630
600 for k=1 to p
610 print "PICO ";
620 next k
630 if f=0 then goto 260
640 if f=3 then goto 690
650 for k=1 to f
660 print "FERMI ";
670 next k
680 goto 260
690 print
700 print "YOU GOT IT IN";g;" GUESSES!!!"
710 print
720 print "YOU WANT TO PLAY AGAIN (1=YES, 0=NO)";
730 input r
740 if r<>0 then goto 150
750 end
