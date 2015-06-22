k=4;

for x in range (0, 4):
	for y in range (0, 4):
		print 'Node(',x,',',y,') - Destiny (', (x+(k/2-1))%k, ', ', (y+(k/2-1))%k, ').'
