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

#define WIDTH 512
#define HEIGHT 512
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
    
    int width;
    int height;

    FREE_IMAGE_FORMAT formato = FreeImage_GetFileType("sample.png", 0);
    FIBITMAP* bitmap = FreeImage_Load(formato, "sample.png");
    
   
    
    
    FIBITMAP* temp = FreeImage_ConvertTo32Bits(bitmap);
    
    width = FreeImage_GetWidth(temp);
    height = FreeImage_GetHeight(temp);
    FIBITMAP * new_bitmap = FreeImage_Allocate(width, height, BPP); 
    
    FreeImage_Unload(bitmap);
    bitmap = temp;
    
    
    int c = 2.1;
    int d = 2.1;
    

    for (int i = 0; i < 200; i++) {
        for (int j = 0; j < 100; j++) {
            // draw a blue pixel at (i, j)
            // x parte real y y parte imaginaria
            int a = i;
            int b = j;
            int inew_bitmap= (a*c - b*d);
            int jnew_bitmap= (a*d + b*c);
            
            RGBQUAD color;
            FreeImage_GetPixelColor(bitmap,i,j,&color);
            FreeImage_SetPixelColor(new_bitmap, inew_bitmap, jnew_bitmap, &color);
        }
    }

    // save it as output.bmp
    FreeImage_Save(FIF_BMP, new_bitmap, "output.bmp");

    // deallocate memory
    FreeImage_Unload(bitmap);
    return 0;
}

