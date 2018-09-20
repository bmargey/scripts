#include <stdlib.h>
#include <conio.h>
#include <string.h>

/* Palindrome using dynamic memory allocation */

// analyse a given string and its reverse
int check(char *input) {
	
	int result = 0; 
	char *rev = (char *) malloc(strlen(input));

	// dupe and reverse
	strcpy(rev, input);
	strrev(rev);

	// strcmp returns 0 where match
	if ( strcmp(rev, input) == 0 ) {
		result = 1;
	}

	return result;
}

int main() {
	 
	char *input, letter;

	// for now allocate  small amount of mem
	input = (char *) malloc(sizeof(char));

	// die if memory cannot be allocated!
	if (!input) {
		exit(0);
	} 
	else {
		int i = 0; 

		printf("** Palindrome detector **\nPlease enter a word: ");

		// read input one char at a time and re size mem
		while ((letter = getchar()) != '\n') {

			realloc(input, (sizeof(char)));
			input[i++] = letter;
		}

		// null terminate the string
		input[i] = '\0';

		printf("\n%s", (check(input) == 1) ? "Yes" : "No") ;
		_getch();
	}

	return 0;
}