/*27.Fazer um programa que apresente invertida uma palavra informada pelo usuário. Informar também se é ou não um palíndromo.*/

FUNCTION MAIN()

    LOCAL cPalavra := "", cInverte := "", nCont :=0

    ACCEPT("Insira uma palavra: ") TO cPalavra
    cPalavra := UPPER(cPalavra)

    FOR nCont := (len(cPalavra)) TO 1 step -1
        cInverte += (SUBSTR(cPalavra,nCont,1))
    NEXT 

    ?CHR(10),"A palavra ", cPalavra, "ao inverso e:", cInverte, CHR(10)

    IF cPalavra == cInverte
        ?"E um palindromo! "
    ELSE
        ?"Nao e um palindromo!"
    ENDIF
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL


