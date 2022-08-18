

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

static byte rgb[RGBSIZE+54];
static byte graybuffer[(GRAYSIZE+2)*(GRAYSIZE+2)]= {0};

int main()
{

    int i, j;
    byte windowbuffer[9];
    byte *gray;
    fprintf(stderr, "Before read rgb.\n");
    readFile("lena.bmp", rgb,30054);
    fprintf(stderr, "After read rgb.\n");
    gray=(byte*)malloc(GRAYSIZE);
    for (i = 0; i < GRAYSIZE; i++)
    {
            *(gray+i) =(byte) round(0.3* rgb[i*3+54]+ 0.11*rgb[i*3+55]+ 0.59*rgb[i*3+56]);
    }
    fprintf(stderr, "After rgb to gray.\n");
    fprintf(stderr, "%X,%X,%X,%X\n", *gray,*(gray+1),*(gray+2),*(gray+3));

    for (j = 1; j < HEIGHT+1; j++)
    {
        for (i = 1; i < WIDTH+1; i++)
        {
           graybuffer[i+j*WIDTH]= *(gray+i+j*WIDTH);
        }
    }
    free(gray);
    for (j = 0; j < HEIGHT ; j++)
    {
        for (i = 0; i < WIDTH ; i++)
        {
            windowbuffer[0] = graybuffer [i + WIDTH * j];
            windowbuffer[1] = graybuffer [i + WIDTH * j + 1];
            windowbuffer[2] = graybuffer [i + WIDTH * j + 2];
            windowbuffer[3] = graybuffer [i + WIDTH * (j + 1)];
            windowbuffer[4] = graybuffer [i + WIDTH * (j + 1) + 1];
            windowbuffer[5] = graybuffer [i + WIDTH * (j + 1) + 2];
            windowbuffer[6] = graybuffer [i + WIDTH * (j + 2)];
            windowbuffer[7] = graybuffer [i + WIDTH * (j + 2) + 1];
            windowbuffer[8] = graybuffer [i + WIDTH * (j + 2) + 2];
            writeFile("stimu.txt", windowbuffer, 9);
            //writeFile("stimu.txt"," ", 1);
        }
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
        *(buffer+i) = fgetc(file);
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
