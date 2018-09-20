#include <stdio.h>
#include <conio.h>

/* A simple variation of standard coding test "FizzBuzz" */

void main() {
	int i;
	for (i = 1; i <= 100; i++) {
		printf(
			"%d %s%s\n", 
			i, 
			(i % 3) ? "" : "Fizz",
			(i % 7) ? "" : "Buzz"
		);
	}

	// wait for user input to return/exit
	_getch();
}