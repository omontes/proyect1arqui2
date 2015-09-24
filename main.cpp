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
#include <omp.h>
#include <time.h>
#include <sys/time.h>
using namespace std;

#define WIDTH 512
#define HEIGHT 512
#define BPP 32 //Bits per pixel 


int Width; 
int Height;

/*
 * Cuando se realiza el suavizado, si el promedio del color es negro 
 * no va a funcionar de la mejor manera, por lo que si el promedio de
 * las posiciones colindantes es negro, lo indica retornando un 0, sino
 * retorna un 1.
 */
int esNegro(RGBQUAD* color){
    if(color->rgbBlue == 0 && color->rgbGreen == 0 && color->rgbRed == 0){
        return 0;
    }
    else return 1;
}


/*
 * Funcion para realizar el suavizado de la imágen, tomando en cuenta el 
 * valor de cada uno de los pixeles colindantes, se realiza un promedio y 
 * el resultado es el color que va en la imágen mapeada. 
 */
int smoothing(int i, int j, RGBQUAD* color, FIBITMAP* bitmap) {
    
    RGBQUAD color1;
    FreeImage_GetPixelColor(bitmap, i + 1, j, &color1);
    /*Verificamos que no sea negro*/
    if(esNegro(&color1)==0) return 0;
    /*Verificamos no tomar pixeles fuera de la imagen*/
    if(i+1<0 | j<0 | j>Height | i+1>Width )
        return 0;
           
    RGBQUAD color2;
    FreeImage_GetPixelColor(bitmap, i - 1, j, &color2);
    if(esNegro(&color2)==0) return 0;
     if(i-1<0 | j<0 | j>Height | i-1>Width )
        return 0;

    RGBQUAD color3;
    FreeImage_GetPixelColor(bitmap, i, j + 1, &color3);
    if(esNegro(&color3)==0) return 0;
     if(i+1<0 | j+1<0 | j+1>Height | i>Width )
        return 0;

    RGBQUAD color4;
    FreeImage_GetPixelColor(bitmap, i, j - 1, &color4);
    if(esNegro(&color4)==0) return 0;
     if(i+1<0 | j-1<0 | j-1>Height | i>Width )
        return 0;

   /* RGBQUAD color5;
    FreeImage_GetPixelColor(bitmap, i+1, j + 1, &color5);
    if(esNegro(&color5)==0) return 0;

    RGBQUAD color6;
    FreeImage_GetPixelColor(bitmap, i-1, j + 1, &color6);
    if(esNegro(&color6)==0) return 0;

    RGBQUAD color7;
    FreeImage_GetPixelColor(bitmap, i-1, j - 1, &color7);
    if(esNegro(&color7)==0) return 0;

    RGBQUAD color8;
    FreeImage_GetPixelColor(bitmap, i+1, j - 1, &color8);
    if(esNegro(&color8)==0) return 0;*/

    int red = color1.rgbRed + color2.rgbRed + color3.rgbRed + color4.rgbRed ;
   // color5.rgbRed + color6.rgbRed + color7.rgbRed + color8.rgbRed;
    int green = color1.rgbGreen + color2.rgbGreen + color3.rgbGreen +
    color4.rgbGreen;// + color5.rgbGreen+ color6.rgbGreen + color7.rgbGreen + color8.rgbGreen;
    int blue = color1.rgbBlue + color2.rgbBlue + color3.rgbBlue + color4.rgbBlue;
    //+ color5.rgbBlue + color6.rgbBlue + color7.rgbBlue + color8.rgbBlue;

    /*Realizamos el promedio*/
    color->rgbGreen = green / 4;
    color->rgbBlue = blue / 4;
    color->rgbRed = red / 4;

}


/*
 * Con esta función se obtiene la componente imaginaria del mapeo inverso
 */
int calcularMapeoInversoY(int i, int j) {
    double A = i - j;
    double B = i + j;
    double D = 2.1 - 0.003 * i;
    double E = 2.1 - 0.003 * j;
    double divisor = pow(D, 2) + pow(E, 2);
    return ((B * D)-(A * E)) / divisor;
}

/*
 * Con esta función se obtiene la componente real del mapeo inverso 
 */
int calcularMapeoInversoX(int i, int j) {
    double A = i - j;
    double B = i + j;
    double D = 2.1 - 0.003 * i;
    double E = 2.1 - 0.003 * j;
    double divisor = pow(D, 2) + pow(E, 2);
    return ((A * D)+(B * E)) / divisor;
}

/*
 * Con esta funcion se obtiene la componente real del mapeo bilineal 
 */
int calcularMapeoX(int i, int j){
    double A = 2.1*i-2.1*j;
    double B = 2.1*i+2.1*j;
    double D = 0.003*i+1;
    double E = 0.003*j+1;
    double C = pow((0.003*i+1),2)+pow((0.003*j+1),2);
    return (A*D+B*E)/C;
  

}

/*
 * Con esta función se obtiene la componente imaginaria del mapeo bilineal
 */
int calcularMapeoY(int i, int j){
    double A = 2.1*i-2.1*j;
    double B = 2.1*i+2.1*j;
    double D = 0.003*i+1;
    double E = 0.003*j+1;
    double C = pow((0.003*i+1),2)+pow((0.003*j+1),2);
    return (-A*E+B*D)/C;
}

/*
 * Funcion principal donde se realiza la carga de la imagen y se le 
 * aplica el mapeo. 
 * Se aplica el mapeo inverso, es decri se inicia desde la imagen que
 * se deberia obtener. Se calcula el mapeo inverso, para tomar el pixel 
 * de la imagen origianl y colocarlo en la imagen nueva o mapeada. Al 
 * mismo tiempo tenemos el suavizado de la imagen pixel por pixel. 
 * Ademas, se aplican los pragmas de OpenMP, para "vectorizar" el codigo.
 */
int main(int argc, char** argv) {
    /*inicializamos FreeImage*/
    FreeImage_Initialise();
    atexit(FreeImage_DeInitialise);
    cout << "FreeImage: " << FreeImage_GetVersion() << "\n";
    /*Obtenemos la imagen de muestra, y la convertimos a un mapa de bits*/    
    FREE_IMAGE_FORMAT formato = FreeImage_GetFileType("sample.png", 0);
    FIBITMAP* bitmap = FreeImage_Load(formato, "sample.png");
    FIBITMAP* temp = FreeImage_ConvertTo32Bits(bitmap);
    /*Obtenemos el ancho y el largo de la imagen*/
    Width = FreeImage_GetWidth(temp);
    Height = FreeImage_GetHeight(temp);
    /*Como la imagen se guarda en un temporal, dejamos de cargar la imagen*/    
    FreeImage_Unload(bitmap);
    bitmap = temp;
    /*Definimos el color negro para el mapeo*/
    RGBQUAD negro;
    negro.rgbBlue = 0;
    negro.rgbRed = 0;
    negro.rgbGreen = 0;
    
    /*
     * Hacemos el calculo del mapeo  
     */
    int x1 =calcularMapeoX(0,0);
    int y1 =calcularMapeoY(0,0);
    
    int x2 =calcularMapeoX(Width,0);
    int y2 =calcularMapeoY(Width,0);
    
    int x3 =calcularMapeoX(0,Height);
    int y3 =calcularMapeoY(0,Height);
    
    int x4 =calcularMapeoX(Width,Height);
    int y4 =calcularMapeoY(Width,Height);
    
    cout << "x1: " << x1 << "\n";
    cout << "y1: " << y1 << "\n";
    
    cout << "x2: " << x2 << "\n";
    cout << "y2: " << y2 << "\n";
    
    cout << "x3: " << x3 << "\n";
    cout << "y3: " << y3 << "\n";
    
    cout << "x4: " << x4 << "\n";
    cout << "y4: " << y4 << "\n";
    
    /*Nuevo bitmap para colocar la imagen mapeada*/
    FIBITMAP * new_bitmap = FreeImage_Allocate(Width,Height, BPP); 
    /*El tamano de la imagen
    Despues probar las 4 esquinas, mapeo normal y 
    entonces saca cual es el valor en la otra imagen, define el bitmap del tamano resultato.*/
 
    double seconds;
    struct timeval start, end;
    gettimeofday( &start, NULL );
    /*Directivas de OpenMP*/
    #pragma omp simd
    for (int x = 0; x < Width; x++) {
        for (int y = 0; y < Height; y++) {
            /*Obtenemos el tamaño de la imagen mapeada*/
            int inew_bitmap= calcularMapeoInversoX(x,(Height-y));
            int jnew_bitmap= calcularMapeoInversoY(x,(Height-y));
            /*Sacar el mapeo de inverso*/
            /*Si una posicion se sale del tamaño de la original colocar el color
             negro en la imagen mapeada*/
            if(inew_bitmap<0 | jnew_bitmap<0 | jnew_bitmap>Height | inew_bitmap>Width ){
                FreeImage_SetPixelColor(new_bitmap, x, y, &negro);
            }
            else{/*Aquí vamos colocando pixel por pixel en la imagen mapeada*/
                RGBQUAD color;
                FreeImage_GetPixelColor(bitmap,inew_bitmap,(Height-jnew_bitmap),&color);
                FreeImage_SetPixelColor(new_bitmap, x, y, &color);
                /*Aplicamos el suavizado*/
                RGBQUAD color2;/*si algun punto del suavizado dentro de la iamgen
                                nos da negro, lo descartamos por que le resta
                                nitidez a la imagen.*/
                if(smoothing(inew_bitmap, Height-jnew_bitmap, &color2, bitmap)==0)
                    FreeImage_SetPixelColor(new_bitmap, x, y, &color);
                else /*sino le aplicamos el suavizado resultante*/
                    FreeImage_SetPixelColor(new_bitmap, x, y, &color2);
            }
        }
    }/*Mostramos el tiempo tardado en realizar la operacion */
     gettimeofday( &end, NULL );
     seconds = (end.tv_sec - start.tv_sec) + 1.0e-6 * (end.tv_usec - start.tv_usec);
     cout << "El mapeo duro en segundos: " << seconds << "\n";

    /*Imagen de salida*/
    FreeImage_Save(FIF_BMP, new_bitmap, "output4.bmp");

    /*Liberamos la memoria*/
    FreeImage_Unload(bitmap);
    return 0;
}

