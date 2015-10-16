#include <cstdlib>
#include <FreeImage.h>
#include <stdio.h>
#include <iostream>
#include <omp.h>
#include <vector>
#include <time.h>
#include <sys/time.h>
#include <cmath>
#define dimension 4
using namespace std;

#define BPP 32 //Bits per pixel 

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
int calcularMapeoX(int i, int j) {
    double A = 2.1 * i - 2.1 * j;
    double B = 2.1 * i + 2.1 * j;
    double D = 0.003 * i + 1;
    double E = 0.003 * j + 1;
    double C = pow((0.003 * i + 1), 2) + pow((0.003 * j + 1), 2);
    return (A * D + B * E) / C;


}

/*
 * Con esta función se obtiene la componente imaginaria del mapeo bilineal
 */
int calcularMapeoY(int i, int j) {
    double A = 2.1 * i - 2.1 * j;
    double B = 2.1 * i + 2.1 * j;
    double D = 0.003 * i + 1;
    double E = 0.003 * j + 1;
    double C = pow((0.003 * i + 1), 2) + pow((0.003 * j + 1), 2);
    return (-A * E + B * D) / C;
}

int smooth(int ***entrada, int x, int y, int z) {
    int newRojo = entrada[x + 1][y][z] + entrada[x - 1][y][z] + entrada[x][y + 1][z] + entrada[x][y - 1][z];
    return newRojo;
}

int suavizado2(int ***entrada, int iTemp, int jTemp, int k, int h, int w, int t) {

    jTemp = jTemp == 0 ? 1 : jTemp;
    iTemp = iTemp == 0 ? 1 : iTemp;

    jTemp = jTemp == (h - 1) ? (h - 2) : jTemp;
    iTemp = iTemp == (w - 1) ? (w - 2) : iTemp;

    int z = entrada[iTemp + 1][jTemp][k] + entrada[iTemp - 1][jTemp][k] + entrada[iTemp][jTemp + 1][k] + entrada[iTemp][jTemp - 1][k];
    int x = entrada[iTemp][jTemp][k];
    z = (z == 0) ? x : z >> 2;

    z = (t == 1) ? 0 : z;

    return z;
}

void calcularMapeo(int ***salida, int ***entrada, int width, int height, int depth) {
    int i,j,k;
    #pragma omp parallel private(i,j,k) shared(salida,entrada)
    for (i = 0; i < width; i++) {
        for (j = 0; j < height; j++) {

            int newi = calcularMapeoInversoX(i, height - j);
            int newj = calcularMapeoInversoY(i, height - j);
            
            /* if(inew_bitmap<0 | jnew_bitmap<0 | jnew_bitmap>Height | inew_bitmap>Width ){
                FreeImage_SetPixelColor(new_bitmap, x, y, &negro);
            }*/
            newj = newj >= 0 ? newj : 0;
            newi = newi >= 0 ? newi : 0;

            newj = newj < height ? newj : 0;
            newi = newi < width ? newi : 0;
            
            //Garantiza que se eligira el negro en la posicion quemada
            newj = newi == 0 ? 0 : newj;
            newi = newj == 0 ? 0 : newi;

            for (k = 0; k < depth; k++) {
                //int x = entrada[newi][height - 1 - newj][k]; // normal          
                //salida[i][j][k] = x;
                 
                //int z = entrada[newi][height-1-newj][k];
                int x = entrada[newi][height - 1 - newj][k];
                //z = (z == 0) ? x : z >> 1;
                salida[i][j][k] = x;
                
            }
        }
    }
}

void suavizado(int ***salida, int ***entrada, int width, int height, int depth) {
    for (int i = 1; i < width - 1; i++) {
        for (int j = 1; j < height - 1; j++) {
            for (int k = 0; k < depth; k++) {
                //SOLO PREGUNTA Z(SOLO UN RGB) TOTAL NO 
                int z = entrada[i + 1][j][k] + entrada[i - 1][j][k] + entrada[i][j + 1][k] + entrada[i][j - 1][k];
                int x = entrada[i][j][k];
                z = (z == 0) ? x : z >> 2;
                salida[i][j][k] = x;
            }
        }
    }
}

int main(int argc, char** argv) {

    FreeImage_Initialise();
    atexit(FreeImage_DeInitialise);


    FREE_IMAGE_FORMAT formato = FreeImage_GetFileType("sample.png", 0);
    FIBITMAP* bitmap_original = FreeImage_Load(formato, "sample.png");

    FIBITMAP* temp = FreeImage_ConvertTo32Bits(bitmap_original);
    int width = FreeImage_GetWidth(temp);
    int height = FreeImage_GetHeight(temp);

    FreeImage_Unload(bitmap_original);
    bitmap_original = temp;


    //Inicializar la matrix de entrada
    int Dim1 = width;
    int Dim2 = height;
    int Dim3 = 3;
    int ***entrada = new int**[Dim1];
    for (int i(0); i < Dim1; i++)
        entrada[i] = new int*[Dim2];

    for (int i(0); i < Dim1; i++)
        for (int j(0); j < Dim2; j++)
            entrada[i][j] = new int[Dim3];

    //Inicializar la matrix de salida        
    int ***salida = new int**[Dim1];
    for (int i(0); i < Dim1; i++)
        salida[i] = new int*[Dim2];

    for (int i(0); i < Dim1; i++)
        for (int j(0); j < Dim2; j++)
            salida[i][j] = new int[Dim3];


    //Inicializar la matrix de salida        
    int ***salida2 = new int**[Dim1];
    for (int i(0); i < Dim1; i++)
        salida2[i] = new int*[Dim2];

    for (int i(0); i < Dim1; i++)
        for (int j(0); j < Dim2; j++)
            salida2[i][j] = new int[Dim3];




    // Bitmap a la matrix llenando la entrada
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            RGBQUAD color;
            FreeImage_GetPixelColor(bitmap_original, i, j, &color);
            entrada[i][j][0] = color.rgbBlue;
            entrada[i][j][1] = color.rgbGreen;
            entrada[i][j][2] = color.rgbRed;
        }
    }
    //El color negro fijo en esa posicion
    entrada[0][height - 1][0] = 0;
    entrada[0][height - 1][1] = 0;
    entrada[0][height - 1][2] = 0;


   



    double start_time, tiempo_seg;
    start_time = omp_get_wtime();


    // generar la matrix de salida
    calcularMapeo(salida, entrada, width, height, 3);
   // suavizado(salida2, salida, width, height, 3);
    tiempo_seg = omp_get_wtime() - start_time;
    cout << tiempo_seg << "\n";

    //convertir matrix a bitmap
     FIBITMAP* bitmap_mapeado = FreeImage_Allocate(width, height, BPP);
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            RGBQUAD color;
            color.rgbBlue = salida[i][j][0];
            color.rgbGreen = salida[i][j][1];
            color.rgbRed = salida[i][j][2];
            FreeImage_SetPixelColor(bitmap_mapeado, i, j, &color);
        }
    }



    //Recortar la imagen
    int newwidth = calcularMapeoX(width, 0);
    int newheight = calcularMapeoY(0, height);
    FIBITMAP * bitmap_final = FreeImage_Allocate(newwidth, newheight, BPP);
    for (int i = 0; i < newwidth; i++) {
        for (int j = 0; j < newheight; j++) {
            RGBQUAD color;
            FreeImage_GetPixelColor(bitmap_mapeado, i, height - j, &color);
            FreeImage_SetPixelColor(bitmap_final, i, newheight - j, &color);
        }
    }
    FreeImage_Save(FIF_BMP, bitmap_final, "output.bmp");
    FreeImage_Unload(bitmap_original);
    
    
   


   /* #pragma omp parallel for
    for (int i = 0; i < dimension; i++)
        for (int j = 0; j < dimension; j++)
            printf("i=%d, j=%d, thread = %d\n", i, j, omp_get_thread_num());*/
    



    return 0;
}

