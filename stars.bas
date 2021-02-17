100 rem *** STARS - PEOPLE'S COMPUTER CENTER, MENLO PARK, CA
110 print "STARS - A NUMBER GUESSING GAME"
120 print
130 randomize
140 rem *** A IS LIMIT ON NUMBER, M IS NUMBER OF GUESSES
150 a=100
160 m=7
170 print "DO YOU WANT INSTRUCTIONS (1=YES 0=NO)";
180 input z
190 if z=0 then 280
200 rem *** INSTRUCTIONS ON HOW TO PLAY
210 print "I AM THINKING OF A WHOLE NUMBER FROM 1 TO";a
220 print "TRY TO GUESS MY NUMBER. AFTER YOU GUESS, I"
230 print "WILL TYPE ONE OR MORE STARS (*). THE MORE"
240 print "STARS I TYPE, THE CLOSER YOU ARE TO MY NUMBER."
250 print "ONE STAR (*) MEANS FAR AWAY, SEVEN STARS (*******)"
260 print "MEANS REALLY CLOSE! YOU GET";m;"GUESSES."
270 rem *** COMPUTER "THINKS" OF A NUMBER
280 print
290 print
300 x=int(a*rnd)+1
310 print "OK, I AM THINKING OF A NUMBER, START GUESSING."
320 rem *** GUESSING BEGINS, HUMAN GETS M GUESSES
330 for k=1 to m
340 print
350 print "YOUR GUESS";
360 input g
370 if g=x then 600
380 d=abs(x-g)
390 if d>=64 then 510
400 if d>=32 then 500
410 if d>=16 then 490
420 if d>=8 then 480
430 if d>=4 then 470
440 if d>=2 then 460
450 print "*";
460 print "*";
470 print "*";
480 print "*";
490 print "*";
500 print "*";
510 print "*";
520 print
530 next k
540 rem DID NOT GUESS NUMBER IN M GUESSES
550 print
560 print "SORRY, THAT'S";m;" GUESSES. NUMBER WAS";x
570 print "LET'S PLAY AGAIN."
580 goto 280
590 rem *** WE HAVE A WINNER
600 for n=1 to 50
610 print "*";
620 next n
630 print "!!!"
640 print "YOU DID IT IN";k;" GUESSES!!! LET'S PLAY AGAIN."
650 goto 280
660 end
