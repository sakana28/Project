

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
// rowwidth is 300, no needs to remove zero padding
#define WIDTH 100
#define HEIGHT 100
#define RGBSIZE 30000
#define GRAYSIZE 10000
typedef unsigned char byte;

void readFile(char *file_name, byte *buffer, int buffer_size);
void writeFile(char *file_name, byte *buffer, int buffer_size);

static byte input[(WIDTH+2)*(HEIGHT+2)];
static byte header[54];

int main(int argc, char *argv[])
{

    int i, j;
    byte rgbdata[3];
    readFile("dog.bmp", header, 54);
    readFile(argv[1], input, 10404);
    writeFile(argv[2], header, 54);

    for (i = 0; i < (WIDTH+2)*(HEIGHT+2); i++)
    {
      
            rgbdata[0] = input[i];
            rgbdata[1] = input[i];
            rgbdata[2] = input[i];
            writeFile(argv[2], rgbdata, 3);
        }


    fprintf(stderr, "After write.\n");

    return 0;
}

void readFile(char *file_name, byte *buffer, int buffer_size)
{
    // Open
    FILE *file = fopen(file_name, "r");

    // Read every char of file ONE BY ONE (not the whole thing at once)
    // We do this because this should look closer to the assembly implementation
    for (int i = 0; i < buffer_size; i++)
    {
        *(buffer + i) = fgetc(file);
    }

    // Close
    fclose(file);
}

/*
 * Writes the buffer to a file
 */

void writeFile(char *file_name, byte *buffer, int buffer_size)
{
    // Open
    FILE *file = fopen(file_name, "a");

    // Write all
    for (int i = 0; i < buffer_size; i++)
    {
        fputc(buffer[i], file);
    }

    // Close
    fclose(file);
}
