/*69.Elaborar um programa que calcule e exiba as pot�ncias de 3 variando de 0 at� 15, ou seja, 30, 31, 32, ... , 314, 315. 
O Pascal n�o possui uma fun��o para c�lculo de pot�ncia, mas possui uma para c�lculo de exponencial. 
Desta forma atrav�s de propriedade matem�tica dos logaritmos, voc� pode resolver c�lculo de pot�ncia e at� de ra�zes n 
�simas da seguinte forma: exp( expoente * ln(base)); 
*/
FUNCTION MAIN ()

   LOCAL nBase, nPotencia, nResultado

? "Potencia de 3: De 0 a 15";

	nBase := 3
	For nPotencia := 0 to 15 step 1 
		nResultado := nBase ^ nPotencia
		?nBase, " ** ", nPotencia, " = ", nResultado
	NEXT
 
RETURN NIL
