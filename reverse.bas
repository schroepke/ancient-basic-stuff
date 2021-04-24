100 rem *** REVERSE - A GAME OF SKILL
110 rem *** PEOPLE'S COMPUTER COMPANY, MENLO PARK CA
120 randomize timer
130 dim a(20)
140 rem *** N = NUMBER OF NUMBERS (1 THRU N)
150 n=9
160 print "DO YOU WANT THE RULES (1=YES  0=NO)";
170 input x
180 if x=0 then goto 210
190 gosub 710
200 rem *** MAKE A RANDOM LIST A(1) TO A(N)
210 a(1)=int((n-1)*rnd)+2
220 for k=2 to n
230 a(k)=int(n*rnd)+1
240 for j=1 to k-1
250 if a(k)=a(j) then goto 230
260 next j
270 next k
280 rem *** PRINT ORIGINAL LIST AND START GAME
290 print
300 print "HERE WE GO ... THE LIST IS:"
310 t=0
320 gosub 610
330 print "HOW MANY SHALL I REVERSE";
340 input r
350 if r=0 then goto 520
360 if r<=n then goto 390
370 print "OOPS! TOO MANY - I CAN REVERSE AT MOST";n
380 goto 330
390 t=t+1
400 rem *** REVERSE R NUMBERS AND PRINT NEW LIST
410 for k=1 to int(r/2)
420 z=a(k)
430 a(k)=a(r-k+1)
440 a(r-k+1)=z
450 next k
460 gosub 610
470 rem *** CHECK FOR A WIN
480 for k=1 to n
490 if a(k)<>k then goto 330
500 next k
510 print "YOU WON IN";t;" MOVES!!!"
520 print
530 print "AGAIN (1=YES  0=NO)";
540 input x
550 if x<>0 then goto 210
560 stop
600 rem *** SUBROUTINE *** PRINT LIST A(1) TO A(N)
610 print
620 for k=1 to n
630 print a(k);
640 next k
650 print
660 print
670 return
700 rem *** SUBROUTINE *** PRINT THE RULES
710 print
720 print "THIS IS THE GAME OF 'REVERSE'. TO WIN, ALL YOU HAVE"
730 print "TO DO IS ARRANGE THE LIST OF NUMBERS (1 THROUGH";n;")"
740 print "IN NUMERICAL ORDER FROM LEFT TO RIGHT. TO MOVE, YOU"
750 print "TELL ME HOW MANY NUMBERS (COUNTING FROM THE LEFT) TO"
760 print "REVERSE. FOR EXAMPLE, IF THE CURRENT LIST IS:"
770 print
780 print " 2 3 4 5 1 6 7 8 9"
790 print
800 print "AND YOU REVERSE 4, THE RESULT WILL BE:"
810 print 
820 print " 5 4 3 2 1 6 7 8 9"
830 print
840 print "NOW, IF YOU REVERSE 5, YOU WIN!"
850 print
860 print " 1 2 3 4 5 6 7 8 9"
870 print
880 print "NO DOUBT YOU WILL LIKE THIS GAME OF SKILL, BUT"
890 print "IF YOU WANT TO QUIT, REVERSE 0 (ZERO)."
900 print
910 return
999 end
