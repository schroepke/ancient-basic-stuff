100 rem *** TEMPERED SCALE FREQUENCY GENERATOR ***
110 print
120 print "AT WHAT OVERTONE SHOULD I BEGIN REPEATING";
130 input r
140 print
150 print "HOW MANY TONES IN THE SCALE";
160 input t
170 print
180 print "WHAT IS THE BASE FREQUENCY";
190 input f
195 print
200 l=log(r)/t
210 print "TONE","FREQUENCY"
220 print
230 for i=0 to t
240 print i+1,f*exp(i*l)
250 next i
260 print
270 end
