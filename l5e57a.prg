/*57.Elaborar um programa que gere, automaticamente, valores aleat�rios, 
entre 0 e 99 e exiba na tela apenas �queles que s�o m�ltiplos de um n�mero informado pelo usu�rio. 
A quantidade de valores a serem gerados, tamb�m deve ser informado pelo usu�rio. 
Fazer duas vers�es da solu��o utilizando diferentes estruturas de repeti��o, a sua escolha. 
==> Vers�o: la�o pr�-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0, nMultiplo := 0, nCont := 0

    Accept "Informe quantos valores quer calcular: " to nCont
    Accept "Informe o fator de multiplicacao desejado: " to nMultiplo
    
    nCont := Val(nCont)
    nMultiplo := Val(nMultiplo)
    nNumero := Hb_RandomInt(0,99)

    WHILE nCont > 0  
        IF nNumero%(nMultiplo)=0
        nNumero += nMultiplo
        ?nNumero       //O programa exibe o valor contido na vari�vel
        nCont--
        ENDIF
    ENDDO
    QOUT("-> *** Esses sao os multiplos de", nMultiplo, "ate", +AllTrim(Str(nCont))," ***")
    ?""

RETURN NIL
