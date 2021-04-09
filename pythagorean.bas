100 print "PYTHAGOREAN SCALE"
110 dim f(7)
120 rem STARTING WITH 2/3, MULTIPLY SUCCESSIVELY BY 3/2
130 f(1)=2/3
140 for i=2 to 7
150 f(i)=f(i-1)*3/2
160 next i
170 rem CONVERT TO NUMBERS BETWEEN 1 AND 2
180 for i=1 to 7
190 if f(i)>=1 then goto 210
200 f(i)=2*f(i)
210 if f(i)<=2 then goto 240
220 f(i)=f(i)/2
230 goto 210
240 next i
250 rem SORT LOWEST TO HIGHEST
260 for i=1 to 6
270 for j=1 to i
280 if f(j)<=f(j+1) then goto 320
290 x=f(j)
300 f(j)=f(j+1)
310 f(j+1)=x
320 next j
330 next i
340 rem PRINT THE SCALE
350 for i=1 to 7
360 print f(i)
370 next i
380 print
390 end
