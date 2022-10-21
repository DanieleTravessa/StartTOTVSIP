/*71.Fazer um programa que dado um n�mero inteiro positivo, 
informado pelo usu�rio, calcule n e exiba o seu fatorial. 
*/
FUNCTION MAIN ()

    LOCAL nNumero := 0, nResultado := 1, nCount := 1

    ACCEPT "Para calcular o fatorial, informe o numero: " to nNumero

    WHILE !IsDigit(nNumero) .OR. val(nNumero) <= 0 
        ACCEPT "Informe um numero: " TO nNumero
    ENDDO

    nNumero := Val(nNumero)

    WHILE nCount <= nNumero
        nResultado *= nCount //� o mesmo que: nResultado = nResultado * nCount
        nCount ++ // � o mesmo que nCount = nCount + 1
    ENDDO
    
    ?  "O  fatorial  de ", nNumero, "� : ", nResultado
RETURN
