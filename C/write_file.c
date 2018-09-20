#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
   
	char filepath[255];
	FILE *fh;
	char row[255];

	printf("Enter full filepath/filename: ");
	scanf("%s", filepath);

	//open file handle, null returned where fopen errors
	fh = fopen(filepath, "w");
	if (!fh) {
		printf("%d: Could not create file %s", errno, filepath);
		exit(0);             
	}
	
	//keep looping user input and write to file handle
	do {
		printf("Enter row (or q to quit): ");
		fgets(row, 255, stdin);

		printf("%s",row);
		if (row != "q") {
			fprintf(fh, "%s", row);
		}
	} while (strcmp(row, "q\n") != 0);

	//close file handle
	fclose(fh);

	return 0;
}