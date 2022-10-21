/*69.Elaborar um programa que calcule e exiba as potências de 3 variando de 0 até 15, ou seja, 30, 31, 32, ... , 314, 315. 
O Pascal não possui uma função para cálculo de potência, mas possui uma para cálculo de exponencial. 
Desta forma através de propriedade matemática dos logaritmos, você pode resolver cálculo de potência e até de raízes n 
ésimas da seguinte forma: exp( expoente * ln(base)); 
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
