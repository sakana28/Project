

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
static byte rgb_buffer[(HEIGHT + 2) * (WIDTH + 2) * 4] = {0x00};

int main(int argc, char *argv[])
{

    int i, j;
    int k = 0;
    fprintf(stderr, "Before read rgb.\n");
    readFile(argv[1], rgb, RGBSIZE + 54);
    fprintf(stderr, "After read rgb.\n");
    for (j = 1; j < HEIGHT + 1; j++)
    {
        for (i = 1; i < WIDTH + 1; i++)
        {
            rgb_buffer[(i + j * (WIDTH + 2)) * 4+3] = rgb[((i-1) + (j-1) * (WIDTH )) * 3 + 55];
            rgb_buffer[(i + j * (WIDTH + 2)) * 4+2] = rgb[((i-1) + (j-1) * (WIDTH)) * 3 + 56];
            rgb_buffer[(i + j * (WIDTH + 2)) * 4+1] = rgb[((i-1) + (j-1) * (WIDTH)) * 3 + 54];
            rgb_buffer[(i + j * (WIDTH + 2)) * 4] = 0x00;
        }
    }
     writeFile(argv[2], rgb_buffer,(WIDTH+2)*(HEIGHT+2)*4);
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
