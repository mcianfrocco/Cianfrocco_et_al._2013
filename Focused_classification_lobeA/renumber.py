#!/usr/bin/env python

import sys
import math

f = sys.argv[1]

out1 = '%s_out1.spi' %(f[:-4])
out2 = '%s_out2.spi' %(f[:-4])

f1 = open(f,'r')

o1 = open(out1,'wa')
o2 = open(out2,'wa')

loop = 1

for line in f1:

	l = line.split()
	s = float(l[0])

	if s < 0: 
		print '%f is less than 0' %(s)

		new = s - 1
		n = (math.fabs(new))
	
		o1.write('%s	1	%f\n' %(loop,new))
		o2.write('%s	1	%f\n' %(loop,n))
		loop = loop+1
		continue	

	if s > 0: 
		print '%f is greater than 0' %(s)
		new = s + 1

                o1.write('%s	1	%f\n' %(loop,new)) 
                o2.write('%s	1	%f\n' %(loop,new))
		loop = loop + 1

 		continue
