/* 
 * File:   main.cpp
 * Author: oscar
 *
 * Created on September 21, 2015, 11:58 AM
 */

#include <FreeImage.h>
#include <cstdlib>
#include <iostream>
#include <cmath>
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
    
    RGBQUAD negro;
    negro.rgbBlue = 0;
    negro.rgbRed = 0;
    negro.rgbGreen = 0;
    
    /*
     * Mapea 0, tmaano en x j y lo mapea y luego mapea oarte ral en 
     */
    /*El tamano de la imagen
    Despues probar las 4 esquinas, mapeo normal y 
    entonces saca cual es el valor en la otra imagen, define el bitmap del tamano resultato.*/
 
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            // draw a blue pixel at (i, j)
            // x parte real y y parte imaginaria
            double A = i-(height-j);
            double B = i+(height-j);
            double D = 2.1-0.003*i;
            double E = 2.1-0.003*(height-j);
            double divisor = pow(D,2)+pow(E,2);
            int inew_bitmap= ((A*D)+(B*E))/divisor;
            int jnew_bitmap= ((B*D)-(A*E))/divisor;
            
            /*Sacar el mapeo de inverso*/
            
            if(inew_bitmap<0 | jnew_bitmap<0 | jnew_bitmap>height | inew_bitmap>width ){
                FreeImage_SetPixelColor(new_bitmap, i, j, &negro);
            }
            else{
            RGBQUAD color;
            FreeImage_GetPixelColor(bitmap,inew_bitmap,(height-jnew_bitmap),&color);
            FreeImage_SetPixelColor(new_bitmap, i, j, &color);}
        }
    }

    // save it as output.bmp
    FreeImage_Save(FIF_BMP, new_bitmap, "output.bmp");

    // deallocate memory
    FreeImage_Unload(bitmap);
    return 0;
}

