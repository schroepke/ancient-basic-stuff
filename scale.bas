100 rem *** SCALE FREQUENCY GENERATOR
110 print
120 print "HOW MANY TONES IN THE OCTAVE ";
130 input t
140 print
150 print "WHAT IS THE BASE FREQUENCY ";
160 input f
170 print
180 l=log(2)/t
190 print "TONE","FREQUENCY"
200 print
210 for i=0 to t-1
220 print i+1,f*exp(i*l)
230 next i
240 print
250 end
