#include <stdio.h> 
#include <stdlib.h>
 float suma_vf(float* vector, int cantidad); 
 
 int main(int argc,char *argv[]) { 
 /*
 	float a = atof(argv[1]);
 	float b = atof(argv[2]);
 	float c = atof(argv[3]);
 	*/
 	float array[]={1.1, 2.2, 3.3};
 	 	
 	int cant;
	cant = (int) sizeof(array) / sizeof(array[0]);
 	
 	float result = 0.0;
 	
	printf("dado el siguente vector (1.1 , 2.2 , 3.3) \n");
 	//float y = *array;
 	
 	result = suma_vf( array, cant);
 	
 	printf("la cantidad de numeros en el verctor es de: %d \n", cant);
 	printf("la suma del vector es: %f \n", result);
 	
 	return 1;
 }
