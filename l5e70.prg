/*70.Altere o algoritmo do programa anterior de forma a n�o utilizar a fun��o �exp�. */
FUNCTION MAIN ()

   LOCAL nBase, nPotencia 

? "Potencia de 3: De 0 a 15";

	nBase := 3
	For nPotencia := 0 to 15 step 1 
		nBase *= 3
        ?"3", " ** ", nPotencia, " = ", nBase
    NEXT
    ?""
 
RETURN NIL
