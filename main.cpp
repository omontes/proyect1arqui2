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
void smoothing(int i, int j, RGBQUAD* color, FIBITMAP* bitmap) {

    RGBQUAD color1;
    FreeImage_GetPixelColor(bitmap, i + 1, j, &color1);

    RGBQUAD color2;
    FreeImage_GetPixelColor(bitmap, i - 1, j, &color2);

    RGBQUAD color3;
    FreeImage_GetPixelColor(bitmap, i, j + 1, &color3);

    RGBQUAD color4;
    FreeImage_GetPixelColor(bitmap, i, j - 1, &color4);
    
    RGBQUAD color5;
    FreeImage_GetPixelColor(bitmap, i+1, j + 1, &color5);
    
    RGBQUAD color6;
    FreeImage_GetPixelColor(bitmap, i-1, j + 1, &color6);
    
    RGBQUAD color7;
    FreeImage_GetPixelColor(bitmap, i-1, j - 1, &color7);
    
    RGBQUAD color8;
    FreeImage_GetPixelColor(bitmap, i+1, j - 1, &color8);

    int red = color1.rgbRed + color2.rgbRed + color3.rgbRed + color4.rgbRed +
    color5.rgbRed + color6.rgbRed + color7.rgbRed + color8.rgbRed;
    int green = color1.rgbGreen + color2.rgbGreen + color3.rgbGreen +
    color4.rgbGreen + color5.rgbGreen+ color6.rgbGreen + color7.rgbGreen + color8.rgbGreen;
    int blue = color1.rgbBlue + color2.rgbBlue + color3.rgbBlue + color4.rgbBlue
    + color5.rgbBlue + color6.rgbBlue + color7.rgbBlue + color8.rgbBlue;

    color->rgbGreen = green / 8;
    color->rgbBlue = blue / 8;
    color->rgbRed = red / 8;

}
int calcularMapeoInversoY(int i, int j) {
    double A = i - j;
    double B = i + j;
    double D = 2.1 - 0.003 * i;
    double E = 2.1 - 0.003 * j;
    double divisor = pow(D, 2) + pow(E, 2);
    return ((B * D)-(A * E)) / divisor;


}

int calcularMapeoInversoX(int i, int j) {
    double A = i - j;
    double B = i + j;
    double D = 2.1 - 0.003 * i;
    double E = 2.1 - 0.003 * j;
    double divisor = pow(D, 2) + pow(E, 2);
    return ((A * D)+(B * E)) / divisor;
    


}
int calcularMapeoX(int i, int j){
    double A = 2.1*i-2.1*j;
    double B = 2.1*i+2.1*j;
    double D = 0.003*i+1;
    double E = 0.003*j+1;
    double C = pow((0.003*i+1),2)+pow((0.003*j+1),2);
    return (A*D+B*E)/C;
  

}
int calcularMapeoY(int i, int j){
    double A = 2.1*i-2.1*j;
    double B = 2.1*i+2.1*j;
    double D = 0.003*i+1;
    double E = 0.003*j+1;
    double C = pow((0.003*i+1),2)+pow((0.003*j+1),2);
    return (-A*E+B*D)/C;

}
int main(int argc, char** argv) {

    FreeImage_Initialise();
    atexit(FreeImage_DeInitialise);
    cout << "FreeImage: " << FreeImage_GetVersion() << "\n";
    
    // create the bitmap object
    // allocate a 200x200 pixel image, with 32-bit colour
    
    int width;
    int height;

    FREE_IMAGE_FORMAT formato = FreeImage_GetFileType("sample3.png", 0);
    FIBITMAP* bitmap = FreeImage_Load(formato, "sample3.png");
    
   
    
    
    FIBITMAP* temp = FreeImage_ConvertTo32Bits(bitmap);
    
    width = FreeImage_GetWidth(temp);
    height = FreeImage_GetHeight(temp);
    
    
    FreeImage_Unload(bitmap);
    bitmap = temp;
    
    RGBQUAD negro;
    negro.rgbBlue = 0;
    negro.rgbRed = 0;
    negro.rgbGreen = 0;
    
    /*
     * Mapea 0, tmaano en x j y lo mapea y luego mapea oarte ral en 
     */
    int x1 =calcularMapeoX(0,0);
    int y1 =calcularMapeoY(0,0);
    
    int x2 =calcularMapeoX(width,0);
    int y2 =calcularMapeoY(width,0);
    
    int x3 =calcularMapeoX(0,height);
    int y3 =calcularMapeoY(0,height);
    
    int x4 =calcularMapeoX(width,height);
    int y4 =calcularMapeoY(width,height);
    
    cout << "x1: " << x1 << "\n";
    cout << "y1: " << y1 << "\n";
    
    cout << "x2: " << x2 << "\n";
    cout << "y2: " << y2 << "\n";
    
    cout << "x3: " << x3 << "\n";
    cout << "y3: " << y3 << "\n";
    
    cout << "x4: " << x4 << "\n";
    cout << "y4: " << y4 << "\n";
    
    width=x2;
    height=y3;
    
    FIBITMAP * new_bitmap = FreeImage_Allocate(width, height, BPP); 
    /*El tamano de la imagen
    Despues probar las 4 esquinas, mapeo normal y 
    entonces saca cual es el valor en la otra imagen, define el bitmap del tamano resultato.*/
 
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            
            int inew_bitmap= calcularMapeoInversoX(i,(height-j));
            int jnew_bitmap= calcularMapeoInversoY(i,(height-j));
            
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
    /*Proceso de suavizacion*/
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            RGBQUAD color;
            smoothing(i, j, &color, new_bitmap);
            FreeImage_SetPixelColor(new_bitmap, i, j, &color);
        }
    }

    // save it as output.bmp
    FreeImage_Save(FIF_BMP, new_bitmap, "output.bmp");

    // deallocate memory
    FreeImage_Unload(bitmap);
    return 0;
}

