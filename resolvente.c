#include <stdio.h> 
#include <stdlib.h>
 void resolvente(float a, float b, float c, float* ra, float* rb); 
 
 int main(int argc,char *argv[]) { 
 	float a = atof(argv[1]);
 	float b = atof(argv[2]);
 	float c = atof(argv[3]);
 	
 	float ra = 0.0;
 	float rb = 0.0;

	printf("dado a la funcion %fX^²+(%fX)+(%f)\n", a, b, c);
 	
 	if(a == 0){
 		printf("el valor de A es 0, no es una funcion cuadratica \n");
 		return 1;
	 }
	 if( (b*b)- (4 * a * c)< 0){
	 	printf("el valor del discrimiante es imaginario, no hay raices \n");
	 	return 1;
	 }
 	
 	resolvente(a,b,c,&ra,&rb); 
 	printf("las raices son R1: %f y R2: %f\n", ra, rb);
 	return 1;
 }
