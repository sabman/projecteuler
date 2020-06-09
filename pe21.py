#Project Euler #21: Amicable numbers
L = 10000
ds = [1]*L
for i in xrange(2, int(L**0.5)):
	for j in xrange(i+1, L//i):
		ds[i*j]+= i+j

an = []
for i in xrange(2, L):
	if ds[i] < i and ds[ds[i]] == i: an+= [ds[i], i]

L1 = int(input("Limit? "))
print "Amicable sum <",L1,"=", sum(a for a in an if a<L1)