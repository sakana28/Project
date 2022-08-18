

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
// rowwidth is 300, no needs to remove zero padding
#define WIDTH 10
#define HEIGHT 10
#define RGBSIZE 30000
#define GRAYSIZE 10000
typedef unsigned char byte;

void readFile(char *file_name, byte *buffer, int buffer_size);
void writeFile(char *file_name, byte *buffer, int buffer_size);

static byte rgb[RGBSIZE+54];
static byte graybuffer[(HEIGHT+2)*(WIDTH+2)]= {0x00};

int main()
{

    int i, j;
    byte *gray;
    fprintf(stderr, "Before read rgb.\n");
    readFile("pixel.bmp", rgb,RGBSIZE+54);
    fprintf(stderr, "After read rgb.\n");
    gray=(byte*)malloc(WIDTH*HEIGHT);
    for (i = 0; i < WIDTH*HEIGHT; i++)
    {
            *(gray+i) =(byte) round(0.3* rgb[i*3+54]+ 0.11*rgb[i*3+55]+ 0.59*rgb[i*3+56]);
            fprintf(stderr, "%X ", *(gray+i));
    }
    fprintf(stderr, "After rgb to gray.\n");

    for (j = 1; j < HEIGHT+1; j++)
    {
        for (i = 1; i < WIDTH+1; i++)
        {
           graybuffer[i+j*(WIDTH+2)]= *(gray+(i-1)+(j-1)*WIDTH);
        }
    }
    free(gray);
     writeFile("pixel_gray_zero.txt", graybuffer,(WIDTH+2)*(HEIGHT+2));

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
