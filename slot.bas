100 data =,0,1,#,+,$
101 dim s$(6),s(6),r(3),r$(3)
110 for x=1 to 6:read s$(x):s(x)=x:next
120 if inkey$="" goto 120
140 print tab(6);">>>>>> SLOT MACHINE <<<<<<":print:print
149 randomize timer
150 n=int(500*rnd)+1
160 for x=1 to n:z=rnd*7+1:next
170 print "PRESS THE SPACE BAR TO GET REPEATED"
180 print "REEL SPINS (EACH SPIN COSTS YOU $1)"
190 print:print "PRESS Q WHEN YOU ARE READY TO QUIT"
200 print:print "PRESS ANY OTHER KEY TO GIVE YOURSELF"
210 print "A BREAK. THE SPACE BAR WILL GET YOU"
220 print "GOING AGAIN   GOOD LUCK!"
230 k$=inkey$:if (k$<>" ") and (k$<>"q") and (k$<>"Q") goto 230
240 if (k$="q") or (k$="Q") goto 750
250 l=l+1
260 for x=1 to 3:r(x)=int(20*rnd)+1:next
270 if r(1)<6 then r(1)=2:goto 330
280 if r(1)<10 then r(1)=1:goto 330
290 if r(1)<14 then r(1)=3:goto 330
300 if r(1)<17 then r(1)=4:goto 330
310 if r(1)<20 then r(1)=5:goto 330
320 r(1)=6
330 if r(2)<7 then r(2)=3:goto 390
340 if r(2)<13 then r(2)=1:goto 390
350 if r(2)<17 then r(2)=2:goto 390
360 if r(2)<19 then r(2)=4:goto 390
370 if r(2)=19 then r(2)=5:goto 390
380 r(2)=6
390 if r(3)<8 then r(3)=2:goto 440
400 if r(3)<13 then r(3)=3:goto 440
410 if r(3)<17 then r(3)=4:goto 440
420 if r(3)<19 then r(3)=5:goto 440
430 r(3)=6
440 q=100*r(1)+10*r(2)+r(3)
450 if q=666 then p=200:goto 550
460 if q=555 then p= 20:goto 550
470 if q=222 then p= 18:goto 550
480 if q=556 then p= 15:goto 550
490 if q=444 then p= 10:goto 550
500 if q=332 then p=  8:goto 550
510 if q=226 then p=  6:goto 550
520 if int(q/10)=11 then p=5:goto 550
530 if int(q/100)=1 then p=3:goto 550
540 p=0
550 for x=1 to 3:for y=1 to 6
560 if r(x)=s(y) goto 580
570 next y
580 r$(x)=s$(y):next x
590 w=w+p:if p=0 goto 610
600 k=k+1
610 print:print "REELS:";tab(9);r$(1);tab(12);r$(2);tab(15);r$(3)
620 if p=0 goto 700
630 if p=200 goto 660
640 if inkey$="" goto 640
650 print "PAYOFF:$";p:goto 700
660 for x=1 to 75
670 if inkey$="" goto 670
680 next
690 print "JACKPOT!!!!!!!$";p
700 on sgn(w-l)+2 goto 710,720,730
710 print "SO FAR YOU'VE LOST $";l-w:goto 740
720 print "SO FAR YOU'RE EVEN":goto 740
730 print "SO FAR YOU'VE WON $";w-l
740 print:goto 230
750 print:print "TIMES PLAYED:";l:print"NUMBER OF PAYOFFS:";k
760 print "AMOUNT PAID $";w
770 on sgn(w-l)+2 goto 780,790,810
780 print "TOTAL LOST $";l-w:print"WANNA TRY AGAIN, SUCKER?":goto 9999
790 print "YOU BROKE EVEN. TOO BAD.":print "THE NEXT ONE MIGHT HAVE"
800 print "BEEN THE BIG ONE!":goto 9999
810 print "TOTAL WON $";w-l:print "YOU BUY THE DRINKS!"
9999 end


