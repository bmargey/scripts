#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int validate(char op) {
	
	char accepted[] = {'*','/','+','-'};
	int i;
	int len = sizeof(accepted)/sizeof(accepted[0]);

	for (i = 0; i <= len; i++) {
		if (op == accepted[i]){
			return 1;
		}
	}

	return 0;
}

float get_result(float num1, float num2, char op) {
	
	float result = 0;

	if ( op == '/' && num2 == 0 ) {
		printf("Error: Division by zero");
		exit(0);
	}
	
	switch(op) {
		case '*':
			result = num1 * num2;
			break;
		case '/':
			result = num1 / num2;
			break;
		case '-':
			result = num1 - num2;
			break;
		case '+':
			result = num1 + num2;
			break;
	}
	
	return result;
}

void main() {

	float num1, num2, res;
	char op;

	printf("Enter operation: ");
	scanf("%c", &op);
	
	if (validate(op) == 0) { 
		printf("Error: Chosen operator not accepted");
		exit(0);
	}
	else {
		printf("Enter first number: ");
		scanf("%f", &num1);
	}

	printf("Enter second number: ");
	scanf("%f", &num2);

	res = get_result(num1, num2, op);
	printf("%f %c %f = %.3f", num1, op, num2, res);
	_getch();
}