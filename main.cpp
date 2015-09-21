/* 
 * File:   main.cpp
 * Author: oscar
 *
 * Created on September 21, 2015, 11:58 AM
 */

#include <FreeImage.h>
#include <cstdlib>
#include <iostream>
using namespace std;

#define WIDTH 200
#define HEIGHT 200
#define BPP 32 //Bits per pixel 

/*
 * 
 */
int main(int argc, char** argv) {

    FreeImage_Initialise();
    atexit(FreeImage_DeInitialise);
    cout << "FreeImage: " << FreeImage_GetVersion() << "\n";
    
    // create the bitmap object
    // allocate a 200x200 pixel image, with 32-bit colour
    FIBITMAP * bitmap = FreeImage_Allocate(WIDTH, HEIGHT, BPP); 

    // create the blue colour
    RGBQUAD blue;
    blue.rgbBlue = 255;

    for (int i = 0; i < 200; i++) {
        for (int j = 0; j < 200; j++) {
            // draw a blue pixel at (i, j)
            FreeImage_SetPixelColor(bitmap, i, j, &blue);
        }
    }

    // save it as output.bmp
    FreeImage_Save(FIF_BMP, bitmap, "output.bmp");

    // deallocate memory
    FreeImage_Unload(bitmap);
    return 0;
}

