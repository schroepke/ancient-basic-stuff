100 rem ***RANDOM MELODY GENERATOR WITH STRINGS***
110 rem ***COPYRIGHT 1972 BY DYMAX***
120 dim m(100) rem ,a$(24),k$(2),j$(2),g$(3)
130 a$="A A#B C C#D D#E F F#G G#"
140 rem
150 print "DO YOU WISH INSTRUCTIONS";
160 input g$
170 if g$="NO" then 260
180 print "I AM A (SLIGHTLY) MAD COMPOSER. MY MELODIES MAY"
190 print "AMUSE YOU. YOU TELL ME THE KEY, AND HOW MANY NOTES"
200 print "TO COMPOSE, AND I WILL DO THE REST.  "
210 print "THE KEY MAY BE A SINGLE LETTER, A B C D E F G, OR"
220 print "IT MAY BE A LETTER FOLLOWED BY '#' (SHARP)."
230 print "NO FLAT KEYS, PLEASE.  "
240 print "FOR EXAMPLE, TYPE F FOR F-NATURAL, F# FOR F-SHARP."
250 print "THE MELODY MAY BE UP TO 100 NOTES LONG."
260 print "WHAT KEY DO YOU WISH";
270 input k$
280 j$="  "
290 if len(k$)=2 then goto 320
300 mid$(j$,1,1)=k$
310 k$=j$
320 for j=1 to len(a$)-1 step 2
330 if k$=mid$(a$,j,2) then goto 350
340 next j
350 k=(j+1)/2
360 rem *** K IS NOW A NUMBER, 1<=K<=12, REPRESENTING THE KEY.***
370 print "HOW MANY NOTES DO YOU WISH";
380 input n
390 print
400 print
410 rem ** THIS IS THE MELODY GENERATOR **
420 for i=1 to n
430 y=int(7*rnd)+1
440 m(i)=7*(y-2)+k+12
450 rem ** NOW TO REDUCE THE TONE MOD 12 **
460 m(i)=m(i)-int(m(i)/12)*12
470 if m(i)<>0 then goto 490
480 m(i)=12
490 q=2*m(i)-1
500 print mid$(a$,q,2);" ";
510 next i
520 print
530 print
540 print
550 print "HOW ABOUT THAT ONE?  WANT ANOTHER";
560 input q$
570 if q$="YES" then goto 260
580 print
590 print "THAT'S ALL, FOLKS !!"
600 end
