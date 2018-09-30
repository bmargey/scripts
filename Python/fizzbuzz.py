#!/usr/bin/python

for n in range(1,101):
	f = 0 if (n % 3) else 1
	b = 0 if (n % 5) else 1
	print(('Fizz' * f) + ('Buzz'* b) or str(n)) 