/*57.Elaborar um programa que gere, automaticamente, valores aleat�rios, 
entre 0 e 99 e exiba na tela apenas �queles que s�o m�ltiplos de um n�mero informado pelo usu�rio. 
A quantidade de valores a serem gerados, tamb�m deve ser informado pelo usu�rio. 
Fazer duas vers�es da solu��o utilizando diferentes estruturas de repeti��o, a sua escolha. 
==> Vers�o: la�o finito (Para)*/

FUNCTION MAIN()

    Local nNumero := 0, nMultiplo := 0, nCont := 0, nFator := 0, nLimite := 0

    Accept "Informe quantos valores quer calcular: " to nLimite
    Accept "Informe o fator de multiplicacao desejado: " to nFator
    
    nLimite := Val(nLimite)
    nFator := Val(nFator)
    nNumero := Hb_RandomInt(0,99)

    For nCont := 1 to nLimite ///*No la�o finito, a estrutura e a variavel com contador se iniciam simultaneamente.
        nMultiplo = nNumero*nFator
        nNumero += nFator
        ?nNumero    //O programa exibe o valor contido na vari�vel
    NEXT
    
    QOUT("-> *** Esses sao ", +AllTrim(Str(nLimite)), "multiplos de", nFator, " ***")
    ?""

RETURN NIL
