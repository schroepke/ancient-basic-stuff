10 rem *** BUTTON, BUTTON, WHO'S GOT THE BUTTON? ***
15 rem *** WRITTEN BY * DAVE KAUFMAN * AUGUST 1973 ***
20 rem *** PEOPLE'S COMPUTER COMPANY, MENLO PARK, CALIFORNIA ***
25 rem ****************************** REM
27 randomize timer 
30 rem FNM COMPUTES X MODULAR 7
35 rem FNN COMPUTES THE NEXT ONE TO GET THE BUTTON

declare function fnm(x) as integer
declare function fnn(x) as integer

function fnm(x) as integer
   fnm=(x=0)*7+(x<=7)*x+(x=8)*1
end function

function fnn(x) as integer
   fnn=fnm(x+sgn((rnd)-0.5))
end function

40 rem def fnm(x)=(x=0)*7+(x<=7)*x+(x=8)*1
45 rem def fnn(x)=fnm(x+sgn((rnd)-0.5))
50 gosub 1000
100 rem *** GAME STARTS HERE ***
110 rem B  THE ONE WHO HAS THE BUTTON
120 rem L  THE LAST ONE WHO HAD IT
130 b=int(rnd*6)+2
140 l=8
150 print
160 print
170 rem *** GUESSING STARTS HERE ***
180 rem G  PLAYER'S GUESS
190 print "WHO DO YOU GUESS HAS IT";
200 input g
210 if g=0 then goto 440
220 if g=b then goto 430
230 if g=l then goto 360
240 if g=fnm(b+1) or g=fnm(b-1) then goto 340
250 if g>0 and g<8 then goto 290
260 print "SILLY - THERE'S NO ONE HERE BY THAT NUMBER"
270 print "TRY AGAIN ..."
280 goto 190
290 print g;":  'WHO, ME?'"
300 print
310 print
320 print "WHOEVER HAS IT, KEEPS IT"
330 goto 170
340 print g;":  'MY NEIGHBOR HAS IT'"
350 goto 370
360 print g;":  'I HAD IT LAST TIME'"
370 l=b
380 b=fnn(b)
390 print
400 print
410 print "...BUT WHOEVER HAS IT, PASSES IT"
420 goto 170
430 print g;":  'RIGHT YOU ARE - LUCKY!'"
440 rem *** AGAIN? ***
450 print
460 print "AGAIN (1=YES, 0=NO)";
470 input g
480 if g=0 then goto 510
490 print "*** NEW GAME ***"
500 goto 100
510 rem *** END PROGRAM ***
520 stop
1000 rem *** THE INTRO ***
1010 print
1020 print
1030 print "BUTTON, BUTTON, WHO'S GOT THE BUTTON?"
1040 print
1050 print
1060 print "SEVEN FRIENDS ARE SITTING IN A CIRCLE"
1070 print "AND YOU'RE IN THE CENTER"
1080 print
1090 print
1100 print "      1"
1110 print
1120 print " 7        2"
1130 print
1140 print "   YOU'RE"
1150 print "6    IT     3"
1160 print
1170 print "   5     4"
1180 print
1190 print
1200 print "SOMEONE HAS THE BUTTON AND YOU HAVE TO GUESS WHO"
1210 print
1220 print "HE CAN PASS THE BUTTON (IF HE WANTS TO)"
1230 print "BUT ONLY TO SOMEONE HE'S SITTING NEXT TO"
1240 print
1250 print "IF YOU WANT TO STOP, TYPE 0 (ZERO)"
1260 print
1270 print "GOOD LUCK   !!!"
1280 return
1290 end
