

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

static byte rgb[RGBSIZE + 54];

int main()
{

    int i, j;
    byte rgb32_buffer[4];
    readFile("lena.bmp", rgb, RGBSIZE + 54);
    for (i = 0; i < GRAYSIZE; i++)
    {
        rgb32_buffer[3] = 0x00;
        rgb32_buffer[2] = rgb[i * 3 + 54]; // red
        rgb32_buffer[1] = rgb[i * 3 + 56]; // blue
        rgb32_buffer[0] = rgb[i * 3 + 55]; // green
        writeFile("rgb32stimu.txt",rgb32_buffer,4);
    }
    fprintf(stderr, "After write rgb to txt t.\n");
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
