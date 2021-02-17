100 rem *** HARMONIC BEAT-FREQUENCY ANALYZER
110 print
120 l=(log(2))/12
130 print "INPUT BASE FREQUENCY, LOWER LIMIT, UPPER LIMIT ";
140 input f,d0,d1
150 rem FUCK
#define fnt(x) (f*exp(x*l))
160 print
170 print "INPUT FIRST TONE, SECOND TONE ";
180 input p,q
190 print
200 u=fnt(p)
210 v=fnt(q)
220 k=1
230 t=k*v
240 j=1
250 s=j*u
260 w=abs(s-t)
270 if w>d1 then 310
280 if w>=d0 then 350
290 print "CONSONANT ";
300 goto 360
310 j=j+1
320 if s<t then 250
330 k=k+1
340 goto 230
350 print "HARMONIC #1","HARMONIC #2","BEAT FREQUENCY"
360 print j,k,w
370 goto 160
380 end
