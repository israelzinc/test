#!/usr/bin/python
__author__ = 'zinc'
import sys, getopt

#Network dimension, sizeX and sizeY
dim=0
sizeX=0
sizeY=0

###############################
# o -- option
# a == argument passed to the o
###############################

#Read command line args
try:
	myopts, args = getopt.getopt(sys.argv[1:],"d:sX:")
except getopt.GetoptError as e:
	print (str(e))
	print ("Usage: %s -d [# of dimensions] -sX [size of x] -sY [size of Y]" % sys.argv[0])
	sys.exit(2)

for o, a in myopts:
	if o == '-d':
		dim = int(a)
	elif o == '-sX':
		sizeX = int(a)

#Display the options
print ("Dimension = %d, SizeX = %d" % (dim, sizeX))
