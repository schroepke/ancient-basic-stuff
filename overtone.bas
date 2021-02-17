100 rem OVERTONE SERIES GENERATOR
110 print "HOW MANY OVERTONES DO YOU WANT";
120 input t
130 print "WHAT IS THE FUNDAMENTAL FREQUENCY";
140 input f
150 print
160 print "OVERTONE","FREQUENCY","RATIO"
170 for i=1 to t
180 h=f*i
190 r=i
200 if r<=2 then 230
210 r=r/2
220 goto 200
230 print i,h,r
240 next i
250 print
260 end
