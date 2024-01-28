100 print
102 print
104 print "HI, I'M THE TAXMAN."
106 print "DO YOU WANT THE REGULATIONS (1=YES,0=NO)";
108 input r
110 if r=1 then goto 900
120 rem *** INITIALIZATION
121 dim l(50),t(10)
122 gosub 800
124 rem *** THE HUMAN TAKES A NUMBER
126 gosub 500
128 rem *** COMPUTE THE HUMAN'S AND TAXMAN'S TOTALS
130 gosub 570
132 rem *** PRINT THE NEW LIST
134 gosub 600
136 rem *** CHECK IF ANY NUMBERS STILL HAVE FACTORS
138 gosub 650
140 if m=1 then goto 126
142 rem *** FIND THE WINNER
144 gosub 700
146 rem *** AGAIN?
148 goto 750
496 rem
497 rem  ***  THE HUMAN MOVES
498 rem
500 print
502 print
504 print "YOU TAKE";
506 input k
508 k=int(k)
510 if k<=0 then goto 750
512 if k<=n then goto 518
514 print k;" IS NOT IN THE LIST  --  TRY AGAIN."
516 goto 502
518 if l(k)=0 then goto 514
520 rem  FIND ALL THE FACTORS
522 if k>1 then goto 530
524 print "THERE ARE NO FACTORS OF";k;" FOR ME."
526 print "ARE YOU TRYING TO SHORT-CHANGE THE TAXMAN?"
528 goto 502
530 m=0
532 for i=1 to k/2
534 if l(i)=0 then goto 544
538 m=m+1
540 t(m)=i
542 l(i)=0
544 next i
546 rem  CHECK WHETHER THERE WERE ANY FACTORS
548 if m=0 then goto 524
550 l(k)=0
552 return
566 rem
567 rem  ***  COMPUTE THE HUMAN'S AND TAXMAN'S TOTALS
568 rem
570 y=y+k
572 print "YOUR TOTAL IS";y
574 print "I GET";
576 for i=1 to m
578 print t(i);
580 z=z+t(i)
582 next i
584 print
586 print"MY TOTAL IS";z
588 return
596 rem
597 rem  ***  PRINT THE NEW LIST
598 rem
600 print
602 print "NEW LIST:";
604 m=0
606 for i=1 to n
608 if l(i)=0 then goto 614
610 print i;
612 m=1
614 next i
616 return
646 rem
647 rem  ***  CHECK IF ANY NUMBERS STILL HAVE FACTORS
648 rem
649 rem  CHECK IF THE LIST IS EMPTY
650 if m=0 then goto 690
652 for i=n to 4 step -1
654 for j=2 to i/2
656 if l(j)=0 then goto 664
658 if i<>j*int(i/j) then goto 664
660 m=i
662 return
664 next j
666 next i
668 rem  THE TAXMAN GETS THE REST OF THE NUMBERS
670 print
672 print "I GET ";
674 for i=1 to n
676 if l(i)=0 then goto 682
678 print i;
680 z=z+i
682 next i
684 print " BECAUSE NO FACTORS OF ANY NUMBER ARE LEFT."
686 print "MY TOTAL IS";z
688 m=0
690 return
696 rem
697 rem  ***  FIND THE WINNER
698 rem
700 print
702 if z>y then 708
704 print "YOU";y;"   TAXMAN";z;"    YOU WIN !!!"
706 return
708 print "TAXMAN";z;"   YOU";y;"    THE TAXMAN WINS."
710 return
746 rem
747 rem  ***  AGAIN?
748 rem
750 print
752 print
754 print "AGAIN (1=YES,0=NO)";
756 input r
758 if r=0 then goto 999
760 goto 122
796 rem
797 rem  ***  INITIALIZATION
798 rem
800 print
802 print "HOW MANY NUMBERS DO YOU WANT IN THE LIST";
804 input n
806 n=int(n)
808 if n<=0 then goto 999
810 if n<=50 then goto 816
812 print "AT THIS TIME, REGULATIONS ALLOW A MAXIMUM OF 50 NUMBERS."
814 goto 800
816 rem dim l(50),t(10)
818 y=0
820 z=0
822 print
824 print "THE LIST IS:";
826 for i=1 to n
828 print i;
830 l(i)=1
832 next i
834 if n>1 then goto 844
836 print
838 print "HOW VERY GENEROUS OF YOU TO FORFEIT ALL TO THE TAXMAN."
840 print "TAXMAN  1    YOU  0       THE TAXMAN WINS."
842 goto 750
844 return
896 rem
897 rem  ***  INSTRUCTIONS
898 rem
900 print
901 print "YOU TRY TO BEAT THE TAXMAN."
902 print
904 print "WE START WITH A LIST OF WHOLE NUMBERS IN NUMERICAL"
906 print "ORDER (YOU DECIDE HOW MANY)."
908 print
910 print "YOU TAKE A NUMBER FROM THE LIST -- THE TAXMAN GETS"
912 print "ALL THE FACTORS OF YOUR NUMBER THAT ARE STILL LEFT."
914 print "YOUR NUMBER AND ALL ITS FACTORS ARE THEN DELETED"
916 print "FROM THE LIST."
918 print
920 print "FOR EXAMPLE, SUPPOSE YOU WANT 10 NUMBERS TO BE IN THE LIST."
922 print "THEN THE LIST WOULD BE:  1  2  3  4  5  6  7  8  9  10"
924 print
926 print "IF YOU TOOK 8, THE TAXMAN WOULD GET 1, 2, AND 4"
928 print "AND THE NEW LIST WOULD BE:  3  5  6  7  9  10"
930 print
932 print "THE TAXMAN MUST GET SOMETHING EVERY TIME SO YOU CAN"
934 print "ONLY PICK A NUMBER THAT HAS FACTORS LEFT."
936 print
938 print "WHEN NONE OF THE REMAINING NUMBERS HAS ANY FACTORS,"
940 print "THE TAXMAN GETS THEM!!"
942 print
944 print "YOUR SCORE IS THE SUM OF THE NUMBERS YOU TAKE."
946 print "IF YOU WANT TO GIVE UP, TAKE 0."
948 print "GOOD LUCK!"
950 goto 121
999 end
