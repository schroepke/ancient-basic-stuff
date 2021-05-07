100 rem TRAP...DYMAX, P.O. BOX 310, MENLO PARK CA 94025
101 randomize timer
120 n=100
130 print "DO YOU WANT INSTRUCTIONS";
140 input z$
150 if z$<>"Y" then goto 270
160 print
170 print "I WILL THINK OF A WHOLE NUMBER FROM 1 TO";n
180 print "TRY TO GUESS MY NUMBER. ENTER TWO NUMBERS, TRYING"
190 print "TO TRAP MY NUMBER BETWEEN YOUR TWO NUMBERS. I WILL"
200 print "TELL YOU IF YOU HAVE TRAPPED MY NUMBER OR IF MY"
210 print "NUMBER IS SMALLER THAN YOUR TWO TRAP NUMBERS OR"
220 print "IF MY NUMBER IS LARGER THAN YOUR TWO TRAP NUMBERS."
230 print "IF YOU THINK YOU KNOW WHAT MY NUMBER IS, ENTER "
240 print "YOUR GUESS FOR BOTH TRAP NUMBERS."
250 print
270 print
280 x=int(n*rnd)+1
290 k=1
300 print
310 print "GUESS NUMBER";k
320 print "FIRST TRAP NUMBER";
330 input a
340 print "SECOND TRAP NUMBER";
350 input b
360 t=sgn(x-a)+sgn(x-b)
370 select case t+3
      case 1
         goto 410
      case 2
         goto 390
      case 3
         goto 380
      case 4
         goto 390
      case 5
         goto 430
    end select
380 if a=b then goto 500
390 print "MY NUMBER IS TRAPPED BY YOUR NUMBERS."
400 goto 440
410 print "MY NUMBER IS SMALLER THAN YOUR TRAP NUMBERS."
420 goto 440
430 print "MY NUMBER IS LARGER THAN YOUR TRAP NUMBERS."
440 k=k+1
450 goto 300
480 print "LET'S PLAY AGAIN. BETTER LUCK NEXT TIME!"
490 goto 270
500 print "YOU GOT IT IN";k;" GUESSES!!"
510 print
520 print "DO YOU WANT TO PLAY AGAIN";
530 input z$
540 if z$="Y" then goto 270
550 end
